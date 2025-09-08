Week09 — Day03: Advanced Retrieval & Knowledge Ops (RAG Governance)

Save as: wk09/day03_knowledge_ops_rag_governance.md

CXO Lens: Knowledge is a supply chain. We govern sources, freshness, and citations so answers are defendable.

Objectives

Contract datasets, define refresh SLOs, curate golden sets.

Wire citation coverage and groundedness into evals.

Activities

Dataset Contracts (25m) — Schema, lineage, owners, refresh cadence.

Index Strategy (20m) — Chunking, metadata, re-rank, update window.

Eval Wiring (20m) — Groundedness, citation coverage, freshness.

Curation (10–25m) — Human-in-loop correction intake and SLAs.

Deliverables

wk09/rag/dataset_contracts/*.yaml

wk09/rag/index_strategy.md

wk09/rag/evals_catalog.md

wk09/rag/curation_runbook.md

Acceptance & QA

Citation coverage ≥ 95%; unsupported claims ≤ 1%.

Refresh SLOs met; drift alarms active.

Table — Index Strategy
Param	Value
Chunk size	800–1200 tokens
Metadata	source, ts, author, pii_flag
Re-rank	cross-encoder@top50→top10
Mermaid — Knowledge Flow
flowchart LR
  Sources --> Curate[Curate]
  Curate --> Chunk[Chunk]
  Chunk --> Embed[Embed]
  Embed --> Index[Index]
  Index --> Evals[Evals]
  Evals --> Improve[Improve]
Snippet — Freshness SQL
SELECT source, MAX(updated_at) AS last_update
FROM knowledge.docs
GROUP BY source
HAVING NOW() - MAX(updated_at) > INTERVAL '30 days';
Metrics

Groundedness score; citation CTR; freshness SLA adherence.

Checklist




Great

Users trust answers by design, not by luck.
