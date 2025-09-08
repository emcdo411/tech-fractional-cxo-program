Week11 — Day02: Risk Taxonomy & Appetite Statements (BlackRock-style Limits)

Save as: wk11/day02_risk_taxonomy_appetite.md

CXO Lens: If it can’t be classified, it can’t be governed. We codify risk classes, KRIs, and limits with breach rules.

Objectives

Approve AI Risk Taxonomy (model, data, privacy, safety, financial, operational, legal).

Draft risk appetite statements and limits with KRIs.

Map use cases to risk classes and owners.

Activities (⏱ 75–90m)

Taxonomy Workshop (25m) — Classes, examples, calculation methods.

Appetite Draft (25m) — Green/Yellow/Red bands; breach → action.

Use-case Mapping (20m) — Each UC tagged with risk class & KRI set.

Limit Register (10–20m) — Who sets, who monitors, who escalates.

Deliverables

risk/taxonomy.md

risk/appetite_statements.md

risk/limit_register.csv

Acceptance & QA

Every scaled UC has risk class, KRIs, limit owner.

Appetite signed by CRO + CEO.

Example Appetite (excerpt)
privacy_leakage:
  metric: "PII leak probes / 10k calls"
  green: "<= 0"
  yellow: "0 < x <= 1"
  red: "> 1"
  actions:
    yellow: ["increase sandboxing","tighten prompts","red-team in 7d"]
    red: ["freeze scale","rollback","board notification in 24h"]
