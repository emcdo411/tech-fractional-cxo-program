Week10 — Day04: Vendor Strategy, MSAs & Exit Economics

Save as: wk10/day04_vendor_strategy_msa_exit_economics.md

CXO Lens: We buy options, not handcuffs. MSAs encode portability, audit, and fair economics.

Objectives

Draft MSA/DPAs/SLAs, exit ramps, and parallel-run clauses.

Activities

Sourcing (25m) — Scorecard and tiers.

MSA Draft (20m) — Rights, SLAs, egress.

Exit Plan (20m) — Parallel run; portability tests.

Economics (10–25m) — Stair-step pricing, caps.

Deliverables

wk10/vendor/scorecard.md

wk10/vendor/msa_checklist.md

wk10/vendor/exit_plan.md

Acceptance & QA

Exit test passed; MSA reviewed by Legal/Sec.

Table — Vendor Scorecard
Factor	Weight
Security	30%
Mermaid — Exit Flow
flowchart LR
  Run1-->Parallel-->Switch
Snippet — Exit Test (pseudo)
./export_embeddings.sh && ./reindex_new_store.sh && ./parity_check.sh
Metrics

Egress cost; switch time; parity pass rate.

Great

Negotiations start from strength.
