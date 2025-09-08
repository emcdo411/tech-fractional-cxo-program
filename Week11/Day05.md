Week11 — Day05: Independent Model Validation (IMV) & Challenge Function

Save as: wk11/day05_independent_model_validation.md

CXO Lens: Second-line IMV can block deployment. We test quality, groundedness, bias, privacy, robustness—documented and reproducible.

Objectives

Define IMV playbook by tier (T1 low → T3 high autonomy).

Stand up challenger evaluations; require backtesting.

Approve sign-off checklist for AIRC.

Activities (⏱ 75–90m)

Tiering→Depth (25m) — Tests required at T1/T2/T3.

Challengers (20m) — AB tests; shadow mode; rollback proof.

Backtesting (20m) — Golden sets; drift diffs; reproducibility.

Sign-off (10–25m) — Evidence pack for AIRC.

Deliverables

mrm/imv_playbook.md

mrm/challenger_plan.md

mrm/signoff_checklist.md

Sign-off (excerpt)

Evals: grounded ≥ 4.2/5, hallucination ≤ 1%, toxicity ≤ 0.02

Privacy: 0 PII leaks on probe suite; deletion proof path

Reliability: p95 ≤ 1200 ms, error ≤ 1%

Economics: UCR ≤ $0.010 with forecast ± 5%
