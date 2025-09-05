# Week06 — Day03: Retrieval & Knowledge Strategy — Data, Vector Stores & Evaluation (CXO Edition)

> **CXO Lens (Deloitte-grade):** Retrieval is a **governed supply chain**: source → ingest → index → retrieve → generate → audit. Today we lock the *standards* (contracts, security, tenancy), the *mechanics* (chunking, re-ranking, hybrid search), and the *accountability* (evals, SLIs, deletion proofs) that make RAG **trustworthy, performant, and affordable**.

---

## Objectives
- Ratify a **retrieval strategy** (BM25 + dense + cross-encoder re-rank → “hybrid with re-rank”) and **data contracts** for all knowledge sources (schema, ownership, freshness, PII flags).
- Approve a **vector store policy** (tenancy, encryption, TTL/residency, Right-to-be-Forgotten, deletion proofs) with full audit trail.
- Stand up a **retrieval evaluation** workflow & dashboard (groundedness, recall@k, hit rate, latency p95, cost / answer) with ablations and promotion gates.

---

## Lesson Summary
RAG lives or dies on disciplined **data engineering** and **evaluation**. We formalize ingestion (OCR, parsing, metadata, dedupe), **per-tenant isolation**, **guardrails**, and **objective metrics** so every answer can be **traced, cited, and defended**.

---

## Activities (⏱ 90 minutes)
1) **Ingestion Playbook (30m)**  
   - File types & parsers (PDF → OCR, DOCX, HTML, CSV)  
   - **Chunking** policy (semantic > fixed), **overlap**, **headers-as-hints**  
   - Metadata schema (owner, effective_date, pii, residency, TTL)  
   - **Dedupe** (minhash/simhash + checksum), canonicalization, refresh cadence

2) **Store & Security Policy (20m)**  
   - **Tenancy:** per-tenant namespaces + read/write tokens + ACLs  
   - **Encryption:** KMS, envelope encryption, key rotation; transport mTLS  
   - **Retention/TTL/Legal hold:** purge SLAs, deletion verification logs  
   - **Right-to-be-Forgotten:** request flow, “proof-of-deletion” artifact

3) **Retrieval Evaluation (40m)**  
   - Golden Q/A set + hard negatives; **ablate** BM25 vs dense vs hybrid; add **cross-encoder** re-rank  
   - Metrics: **recall@k**, **nDCG@k**, **citation coverage**, **groundedness**, **hallucination rate**, p95 latency, **unit cost**  
   - Select **Golden Path** config with **acceptance tests** and promote-to-prod criteria

---

## Deliverables
- `data/retrieval_strategy.md` — chosen architecture, chunking policy, re-rank config, caching
- `data/document_ingestion_playbook.md` — parsers, metadata, dedupe, refresh SLAs
- `data/vector_store_policy.md` — tenancy, encryption, TTL/residency, deletion proofs, access reviews
- `data/retrieval_eval_report.md` — baseline vs ablations, lift, cost/latency trade-offs
- `observability/retrieval_dashboard_spec.md` — metrics, slices (tenant, corpus), alerts
- `runbooks/reindex.md`, `runbooks/delete_request.md`, `runbooks/leak_incident.md`

---

## Acceptance & QA (evidence-based)
- **Strategy** lists top sources, **metadata schema**, **refresh SLAs**, and **chunking + re-rank** defaults.  
- **Policy** covers **PII & residency**, **tenant isolation**, **deletion guarantees** with signed deletion logs.  
- **Eval report** demonstrates **≥ 15% lift** in groundedness (or recall@k) from baseline using hybrid+re-rank **without >10% unit-cost increase**; p95 latency within target.  
- **Dashboards** live with alerting; one **tabletop** for “delete-on-request” completed with proof artifact.

---

## Retrieval Architecture (Mermaid)
```mermaid
flowchart LR
  subgraph Sources
    SP[SharePoint]
    KB[Confluence/KB]
    DOC[Docs/PDFs]
    DB[(Warehouse)]
    API[Third-party APIs]
  end

  subgraph Ingestion
    P[Parsers/OCR]
    N[Normalizer]
    DQ[Deduper (simhash)]
    MET[Metadata Enricher]
    CNT[Chunker (semantic+overlap)]
    EMB[Embedder]
  end

  subgraph Store
    VS[(Vector Store: tenant namespaces)]
    IDX[(Keyword Index: BM25)]
    CACHE[(Response Cache)]
  end

  subgraph Runtime
    RET[Retriever (hybrid)]
    RR[Re-ranker (cross-encoder)]
    G[Generator (LLM)]
    GRD[Guardrails (PII/Toxicity/Citations)]
  end

  subgraph Obs/Fin/GRC
    OBS[Observability: traces/metrics/evals]
    FIN[FinOps: unit cost]
    AUD[Audit: access/deletion logs]
  end

  SP-->P-->N-->DQ-->MET-->CNT-->EMB-->VS
  DOC-->P
  KB-->P
  DB-->N
  API-->N
  MET-->IDX
  RET-->VS
  RET-->IDX
  RET-->RR-->G-->GRD
  G-->CACHE
  RET-->OBS
  G-->OBS
  OBS-->FIN
  VS-->AUD
````

---

## Data Contract (YAML template)

```yaml
name: hr_policy_docs
owner: hr-ops
steward: data-governance
source_system: SharePoint/HR
refresh_sla: "24h"
residency: "us-east"
pii: false
schema:
  - field: doc_id
    type: string
    required: true
  - field: effective_date
    type: date
    required: true
  - field: department
    type: string
    enum: ["HR","Finance","Ops","Legal"]
  - field: security_level
    type: string
    enum: ["public","internal","confidential"]
ttl_days: 365
deletion_process:
  rtbF_supported: true
  proof_artifact: "audit/deletions/{doc_id}.json"
access:
  read_roles: ["hr-readers","legal"]
  write_roles: ["hr-ops"]
```

---

## Metadata (document-level example)

```yaml
doc_id: "HR-Policy-2025-09"
source: "SharePoint/HR"
tags: ["benefits","pto"]
effective_date: "2025-09-01"
pii: false
residency: "us-east"
security_level: "internal"
ttl_days: 365
checksum: "sha256:..."
canonical_url: "sp://hr/policies/2025-09"
```

---

## Chunking & Retrieval Defaults

* **Chunking:** semantic boundaries (headings, lists); target **350–700 tokens**; **overlap 15–20%**; inject **section headers** into chunk text.
* **Hybrid retrieval:** **k=40** (BM25 20 + dense 20) → **cross-encoder re-rank top 15** → **LLM context 8–12** chunks.
* **Citations required**; drop chunks with **low cosine** to query; cap **context tokens** per SLO.

---

## Evaluation Design

### Golden Set (CSV sketch)

```csv
qid,question,expected_source_ids,answer_style,domain
BEN-001,"How many PTO days accrue for new hires?","HR-Policy-2025-09#sec3","extractive","HR"
FIN-014,"What counts as allowable GM adjustments?","Finance-Guide-2024#appendixA","grounded_explain","Finance"
SEC-007,"May we email customer PII externally?","Security-Std-PII#sec2","refusal_with_policy","Security"
```

### Metrics & Targets

| Category     | Metric             | Target                           |
| ------------ | ------------------ | -------------------------------- |
| Retrieval    | **recall\@k**      | ≥ **0.92**                       |
| Ranking      | **nDCG\@k**        | ≥ **0.87**                       |
| Groundedness | Judge score (1–5)  | ≥ **4.2/5**, tail ≥ 3/5          |
| Citation     | Coverage           | ≥ **95%** answers with citations |
| Safety       | Hallucination rate | ≤ **1%**                         |
| Latency      | p95                | ≤ **1200 ms**                    |
| Cost         | Unit cost / answer | ≤ **\$0.015** (target)           |

> **Ablations:**
>
> * BM25 only vs Dense only vs **Hybrid** vs **Hybrid + Re-rank**
> * Chunk size/overlap sweep
> * Embedding model variants (small/fast vs large/accurate)

**Promotion Gate:** choose config with highest groundedness **subject to** p95 latency & unit-cost targets; any safety regression blocks.

---

## Vector Store Policy — Highlights

* **Tenancy:** per-tenant indexes/namespaces; enforced via scoped API keys; quarterly access reviews.
* **Encryption:** at rest (KMS-managed keys, rotation ≤90d), in transit (mTLS), **envelope encryption** for sensitive corpora.
* **Retention/TTL:** default 365d unless contract overrides; **legal hold** tag halts TTL; purge job emits **deletion proof** JSON to `audit/deletions/`.
* **Right-to-be-Forgotten:** ticketed flow; clock-start SLA **72h**; verification includes absent-key probe + audit log entry.
* **Backups:** encrypted snapshots; restore runbook with checksum parity check.

---

## Cost & Capacity Notes

* **Unit cost/answer** ≈ $$((prompt+ctx+completion) tokens / 1k) × \$rate$$ + $retrieval compute$
* Track **cache hit rate**, **index size**, **shard count**, **replication factor**, **embedding queue backlog**.
* Alerts at **70/90/100%** monthly budget; variance commentary auto-posted to FinOps.

---

## Observability & Alerts

* **SLIs:** retrieval latency p50/p95/p99, recall\@k on shadow evals, citation coverage, guardrail hits, unit cost.
* **SLOs:** Copilot groundedness ≥ 4.2/5; Latency p95 ≤ 1200 ms; Unit cost ≤ \$0.015.
* **Alerts:** Pager for **latency/cost** breaches; Slack for **recall/citation** dips; auto-open incident if **deletion proof** missing >24h.

---

## Governance, Risk & Compliance

* **PII minimization** at ingest; redaction before index; sensitive docs flagged `security_level=confidential`.
* **Poisoning defenses:** source allowlists, checksum/attestation, anomaly scans for prompt-injection patterns.
* **Auditability:** immutable logs: who ingested what, when, with which checksum; **deletion proof** artifacts retained 24 months.

---

## RACI

* **Responsible:** Data Eng (ingest), Platform (retrieval/routing), Security (policy/GRC), Knowledge Owners (content)
* **Accountable:** Head of Data/AI Platform
* **Consulted:** Legal/Privacy, Finance (FinOps), Product
* **Informed:** ELT, Business Unit Leads

---

## Timebox & Follow-Ups

* **⏱ 90m total:** 30 ingestion • 20 policy • 40 evaluation.
* **T+48h:** publish eval report + chosen Golden Path + dashboard links.
* **T+7d:** complete “delete-on-request” tabletop with signed proof artifact.

---

## What “Great” Looks Like (Harvard/MIT CXO rubric)

* **Traceable:** Every answer cites sources; provenance is one click away.
* **Controllable:** Deletion requests produce verifiable proofs; access is least-privilege.
* **Performant:** Hybrid+re-rank beats baseline by ≥15% with latency & cost inside SLOs.
* **Repeatable:** Ingestion → index → eval → promote is scripted with runbooks and gates.

```
::contentReference[oaicite:0]{index=0}
```

