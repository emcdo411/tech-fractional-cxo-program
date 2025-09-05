# Week06 — Day03: Retrieval & Knowledge Strategy — Data, Vector Stores & Evaluation (CXO Edition)

## Objectives
- Define **retrieval strategy** (hybrid search, chunking, enrichment) and **data contracts** for knowledge sources.
- Set **vector store policy** (tenancy, encryption, TTL, PII handling) with audit trails.
- Build a **retrieval evaluation** workflow (groundedness, hit rate, latency, cost).

## Lesson Summary
RAG lives or dies on data quality and retrieval discipline. We formalize ingestion, governance, and evaluation so answers are *grounded* and defensible.

## Activities (⏱ 90 min)
- **Ingestion playbook (30m):** File types, parsers, metadata, dedupe, refresh cadence.
- **Store policy (20m):** Tenancy model, keys, encryption, retention/TTL, purge procedures.
- **Retrieval eval (40m):** Metrics, golden questions, ablations (BM25 vs dense vs hybrid).

## Deliverables
- `data/retrieval_strategy.md`
- `data/vector_store_policy.md`
- `data/document_ingestion_playbook.md`
- `data/retrieval_eval_report.md`

## Acceptance & QA
- Strategy names **top sources**, **metadata schema**, **refresh SLAs**.
- Policy covers **PII & residency**, **tenant isolation**, **deletion guarantees**.
- Eval report shows **≥ 15% lift** in groundedness from baseline with hybrid search.

## Retrieval Flow (Mermaid excerpt)
```mermaid
flowchart LR
  Source --> Ingest
  Ingest --> Index
  Query --> Retrieve
  Retrieve --> Context
  Context --> Generate
  Generate --> Log
Metadata (example)
yaml
Copy code
doc_id: "HR-Policy-2025-09"
source: "SharePoint/HR"
tags: ["benefits","pto"]
effective_date: "2025-09-01"
pii: false
ttl_days: 365
pgsql
Copy code

