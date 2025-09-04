## Day05 — Risk Register & Heatmap (CXO Edition)

### Objectives
- Populate a **decision-useful** risk register: 5 cyber risks with **owners, mitigations, and target states**.
- Produce a numeric **5×5 heatmap** and narrative on the **top risk** with next actions.

### Lesson Summary
A short, live risk register outruns a long, stale one. Capture **inherent vs residual** risk, **velocity**, and **trend**. Link each risk to your Day02 controls and define **KRIs**.

### Activities
1) **Define Risks (x5)**: For each—Asset/Process, Threat, Control link(s), Inherent(Impact×Likelihood), Mitigation, Residual.
2) **Compute & Color**: Severity bands (1–25); map to colors; highlight ≥ Threshold.
3) **KRIs**: 1–2 leading indicators per risk (e.g., privileged minutes, EDR coverage).
4) **Narrative**: Top risk one-pager (scenario, loss estimate, plan, owner, date).

### Deliverables
- **risk/risk_register_week03.csv**  
  Columns: Risk, Category, Asset, Threat, InherentImpact, InherentLikelihood, InherentScore, ControlsLinked, Mitigation, ResidualImpact, ResidualLikelihood, ResidualScore, Velocity, Trend, Owner, ReviewDate.
- **risk/risk_heatmap.csv** (grid of Impact × Likelihood and color)
- **risk/risk_notes.md** (top-risk narrative + plan)

### Acceptance & QA
- **5 risks** entered with owners/mitigations; at least **1 ≥ threshold** has plan+date.
- ControlsLinked references Day02 control IDs.
- Heatmap matches register values; legend defined.
- KRIs documented and measurable.

### Timebox
- ⏱ 60 minutes

---
