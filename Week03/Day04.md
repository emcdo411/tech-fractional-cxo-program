## Day04 — Vendor Risk Assessment (CXO Edition)

### Objectives
- Stand up **tiered vendor intake** (T1/T2/T3) with **scoring rubric**, SSO/SCIM requirement, and renewal cadence.
- Complete **one real assessment** end-to-end (evidence, score, decision, renewal).

### Lesson Summary
Vendors expand your attack surface. Use a short, repeatable rubric that measures data sensitivity, access level, security posture, and operational resilience. Gate Tier-1 vendors behind **SSO + SCIM**; record the decision trail.

### Activities
1) **Tiering & Scoring**: Define rubric (DataType, Access, Controls, Region, Financial/Support, Compliance). Thresholds for Auto-Approve/Review/Reject.
2) **Intake Form**: What data, where, retention, sub-processors, SSO/SCIM, encryption, incident SLAs.
3) **Complete One Assessment**: Collect evidence (SOC2/ISO, DPAs), compute score, document exceptions and decision.
4) **Renewal & Monitoring**: Renewal period (12–24 mo), triggers (major incident, material change), owner.

### Deliverables
- **risk/vendor_risk_assessment_template.csv** (Vendor, DataType, Controls, Country, Score, Reviewer, Date)
- **risk/vendor_risk_policy.md** (tiering, thresholds, SSO/SCIM gate, renewal)
- **risk/vendor_risk_rules.yml** (scoring weights + pass/fail thresholds)
- **risk/vendor_intake_form.md** (evidence checklist)
- **risk/vendor_records/<vendor>.md** (decision memo, score, exceptions)
- **risk/renewal_schedule.csv** (vendor, tier, next review date, owner)

### Acceptance & QA
- Template includes **scoring rule** + math example.
- One vendor **fully assessed** with evidence links and final decision.
- SSO/SCIM requirement documented for **Tier-1**; exception (if any) time-boxed.
- Renewal date + owner set.

### Timebox
- ⏱ 60 minutes

---
