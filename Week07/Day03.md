# Week07 — Day03: Model Risk Management & Guardrails (Policy → Pipeline)

> **CXO Lens:** We operationalize **AI safety**: evals, adversarial tests, human‑in‑the‑loop, and rollback proofs. Guardrails must be measurable—not wishes.

---

## Objectives
- Define **MRM tiers** and approval gates (Gx) for models/prompts/agents.
- Build an **evaluation plan** (quality, groundedness, harm, bias, privacy).
- Ship **guardrail runbooks**: fallbacks, circuit breakers, and incident triage.

---

## Lesson Summary
Credibility comes from repeatable tests and **decision logs**. We convert policy into **automated checks** and **release workflows** with pass/fail criteria and audit trails.

---

## Activities (⏱ 75–90 minutes)
1) **Risk Tiering (20m)**  
   - Classify top 5 models: Impact × PII × Autonomy. Assign **test depth**.
2) **Eval Matrix (25m)**  
   - Define metrics & datasets (golden sets, toxic prompts, privacy probes).
3) **Guardrails & Fallbacks (20m)**  
   - Routing matrix (retrieve → re‑rank → generate), blocklists, safe‑completion, human review.
4) **Incident Playbook (10–25m)**  
   - Sev ladder, pager chain, comms templates, **rollback proof**.

---

## Deliverables
- `wk07/mrm/tiering.md` — risk tiers + required tests.
- `wk07/mrm/evals_catalog.md` — metrics, datasets, thresholds.
- `wk07/mrm/guardrails.md` — policies mapped to pipelines.
- `wk07/mrm/incident_playbook.md` — detection → response → learning.

---

## Acceptance & QA
- Each high‑risk use case has **pre‑prod eval results** with thresholds met.
- Release checklist includes **rollback plan** and **owner**.
- Incidents reach **postmortem** with corrective actions in ≤ **7 days**.

---

## Eval Matrix (Excerpt)
| Dimension        | Metric/Check            | Threshold | Evidence            |
|------------------|-------------------------|-----------|---------------------|
| Groundedness     | Citation coverage       | ≥ 95%     | Eval run #2025‑W27  |
| Hallucination    | Unsupported claims rate | ≤ 1%      | Red‑team set v3     |
| Privacy          | PII leakage probe       | 0 leaks   | Privacy suite v2    |
| Bias/Fairness    | Group parity (Δ)        | ≤ 5%      | Fairness set v1     |
| Safety           | Toxicity score          | ≤ 0.02    | Safety suite v4     |

