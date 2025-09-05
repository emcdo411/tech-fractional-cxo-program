# Week05 — Day04: Copilot Program — Evaluation, Guardrails & Telemetry (CXO Edition)

## Objectives
- Define a **copilot evaluation framework** (task fit, safety, quality, productivity).
- Publish **prompting & retrieval standards**, **guardrails**, and a **red-team plan**.
- Instrument **telemetry** to measure usage, success, and risk signals.

## Lesson Summary
Copilots accelerate work when they’re aligned to specific tasks, governed on data access and safety, and measured with **real telemetry**—not anecdotes.

## Activities (⏱ 90 min)
- **Scorecard (25m):** Set criteria & weights for 3 pilot use-cases.  
- **Guardrails (25m):** Define data access, privacy, safety, and **human-in-the-loop** rules.  
- **Red-team (20m):** Design abuse, leakage, and bias scenarios with acceptance tests.  
- **Telemetry spec (20m):** Enumerate events, fields, dashboards, and alert thresholds.

## Deliverables
- `ai/copilot_eval_framework.md` (criteria, weights, pass bar)  
- `ai/prompt_standards.md` (task patterns, retrieval rules)  
- `ai/redteam_plan.md` (scenarios, tests, severity scale)  
- `ai/telemetry_spec.md` (event schema, retention, owners)  
- `ai/usage_dashboard_spec.md` (metrics & charts)

## Acceptance & QA
- One copilot **approved for pilot** with score **≥ threshold**; red-team tests documented.  
- Telemetry events live for **usage, task success, override, escalation, and PII blocks**.

## Scorecard (excerpt)
| Criterion       | Weight | Measure                          | Pass        |
|-----------------|:------:|----------------------------------|:-----------:|
| Task Fit        |  0.25  | Completion rate vs baseline      | ≥ **+25%**  |
| Safety/Privacy  |  0.25  | Red-team outcomes                | **No Sev-1**|
| Quality         |  0.25  | SME rating / BLEU/ROUGE (if used)| ≥ **4/5**   |
| Productivity    |  0.15  | Time saved                       | ≥ **30%**   |
| Operability     |  0.10  | Telemetry + support              | **On**      |
```
