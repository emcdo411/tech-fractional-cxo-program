# Week06 — Day02: LLMOps — Evaluation Harness, Versioning & Drift (CXO Edition)

## Objectives
- Stand up an **evaluation harness** (offline/online) with golden sets and regression tests.
- Establish **prompt/model/dataset versioning** and **release policy**.
- Implement **drift & abuse monitoring** with escalation paths.

## Lesson Summary
Quality must be testable and repeatable. We codify how changes are proposed, measured, and promoted—reducing surprise regressions and audit risk.

## Activities (⏱ 90 min)
- **Harness (35m):** Define metrics (exactness, faithfulness, toxicity), golden sets, and pass bars.
- **Versioning (25m):** Prompt registry, dataset hashes, model IDs; release notes format.
- **Monitoring (30m):** Drift signals (input, embedding, output), abuse detections, paging policy.

## Deliverables
- `mlops/evaluation_harness.md`
- `mlops/test_suite.csv`
- `mlops/prompt_registry.md`
- `mlops/model_versioning_policy.md`
- `mlops/drift_monitoring_spec.md`

## Acceptance & QA
- Harness runs on CI; **baseline scores** recorded; **fail gates** defined.
- Prompt/Model releases use **semantic versions**; rollback path documented.
- Drift alerts route to **on-call**; abuse events **triaged & logged**.

### Test Suite (CSV sketch)
```csv
case_id,domain,input,expected,metric,pass_bar,notes
FAQ-001,Support,"Reset password",ReferenceAnswer,exact>=0.8,0.8,"non-PII"
EXPL-010,Finance,"Explain GM variance",SMEScore,>=4,4.0,"faithfulness"
TONE-005,Comms,"Draft email to client",Toxicity,<=0.02,0.02,"guardrail"
Prompt Registry (example)
ID: billing_refund_v2.3.0

Owner: Support Ops

Linked datasets: golden_v2025_09

Changelog: clarified refund policy; added citation constraint
