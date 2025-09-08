Week09 — Day04: LLMOps Maturity & Model Lifecycle (Registry→Gates)

Save as: wk09/day04_llmops_maturity_model_lifecycle.md

CXO Lens: We treat prompts, models, and agents as versioned assets with promotion gates, evals, and rollbacks.

Objectives

Create registry and promotion gates (G1→G3).

Standardize eval harness and release workflows.

Activities

Maturity Rubric (25m) — Define L1–L4 across data, eval, release, ops.

Registry (20m) — IDs, owners, lineage; SBOM for models/prompts.

Gates (20m) — Required evals, safety checks, rollback proof.

Automation (10–25m) — CI/CD with canary + feature flags.

Deliverables

wk09/llmops/maturity_rubric.md

wk09/llmops/registry.md

wk09/llmops/promotion_gates.md

wk09/llmops/cicd_pipeline.md

Acceptance & QA

All prod models/prompts have registry entries and last-known-good tag.

Gate checklist enforced in CI; rollback drill passed.

Table — Maturity Rubric (excerpt)
Level	Data	Evals	Release	Ops
L1	Ad-hoc	Manual	Static	None
L3	Contracts	Auto	Canary	SLOs
Mermaid — CI/CD
flowchart LR
  Dev --> PR[PR + Evals]
  PR --> Gate[Gate G2]
  Gate --> Canary[Canary]
  Canary --> Prod
  Prod --> Rollback[Rollback Path]
Snippet — Eval Harness (Python sketch)
def evaluate(prompt, dataset):
    scores = []
    for case in dataset:
        out = llm(prompt.format(**case))
        scores.append(metrics.grounded(out, case["refs"]))
    return sum(scores)/len(scores)
Metrics

Eval pass rate; rollback MTTR; promotion lead time.

Checklist




Great

Releases are routine; incidents are short and reversible.
