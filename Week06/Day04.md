# Week06 — Day04: Experimentation, Causal Inference & Guardrail Metrics (CXO Edition)

## Objectives
- Establish **A/B testing framework** for AI features with **power analysis** and **guardrails**.
- Define **primary outcome metrics** and **causal read** (avoiding vanity metrics).
- Publish **launch checklist** with ethics/safety and roll-back criteria.

## Lesson Summary
Ship changes with confidence. We move from anecdotes to statistically valid decisions with pre-registered hypotheses and immutable results.

## Activities (⏱ 90 min)
- **Design (30m):** Hypotheses, primary/secondary metrics, sample size/power.
- **Guardrails (30m):** Safety (toxicity, leakage), equity (disparity), quality (SME), cost.
- **Lifecycle (30m):** Register → run → analyze → decide → document.

## Deliverables
- `experiments/ab_testing_framework.md`
- `experiments/guardrail_metrics.md`
- `experiments/sample_size_calc.xlsx`
- `experiments/launch_checklist.md`

## Acceptance & QA
- One experiment **pre-registered**; **power ≥ 0.8**; guardrails defined.
- Analysis template outputs **effect size, CI, p**, guardrail outcomes, decision.

### Guardrails (example table)
| Metric | Threshold | Owner | Escalation |
|---|---:|---|---|
| Toxicity rate | ≤ 0.5% | QA Lead | Page SecOps > Sev-2 |
| Sensitive data leak | 0 | CISO | Sev-1 halt |
| Average task time | -25% vs control | Ops | PM review |

### Launch Checklist (highlights)
- ✅ Privacy & DLP checks done  
- ✅ Rollback switch + owner  
- ✅ On-call & runbooks updated  
- ✅ Comms plan & help content live
