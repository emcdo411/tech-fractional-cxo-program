## Day03 — Identity & Access Policy (CXO Edition)

### Objectives
- Codify **identity-as-the-perimeter**: enforce JML (joiner–mover–leaver), phishing-resistant MFA, PIM/JIT, and session hardening.
- Separate **admin** vs **work** identities; design **SoD** (segregation of duties) and **service-account** governance.
- Define **review cadence** (access, privileges, app roles) and the **break-glass** standard operating procedure (SOP).

### Lesson Summary
Access drift is a business risk. Encode identity controls as **policy + evidence**: JML automation (SCIM), Conditional Access (device + risk), short-lived elevation, and periodic reviews. Treat service accounts like production assets.

### Activities
1) **Role & Group Model**: Author RBAC/ABAC taxonomy (people, service, machine identities). Naming standards, lifecycle states.
2) **Conditional Access**: Define policies for admins vs workforce (FIDO2/WebAuthn for admins; device-compliant; session lifetime; step-up).
3) **PIM/JIT**: Approval chain, max elevation window, audit trail, emergency elevation path.
4) **JML Flow**: HRIS → IdP (SCIM) provisioning; mover entitlements change; 24h leaver revocation.
5) **Service Accounts**: Ownership, rotation policy, non-human scopes, key escrow/justification.
6) **Reviews**: Quarterly access certs for Tier-1 apps; monthly admin review; SoD checks.

### Deliverables
- **security/identity_access_policy.md** (Purpose, Scope, Roles, Processes, Reviews)
- **security/policies/conditional_access.yml** (admin/workforce rules)
- **security/policies/pim_jit.md** (elevation, approvals, logs)
- **security/policies/service_accounts.md** (ownership, rotation, secrets)
- **security/artifacts/jml_flow.mmd** (Mermaid diagram of JML)
- **security/controls/sod_matrix.csv** (function × privilege, conflicts flagged)
- **security/runbooks/break_glass.md** (who/when/how; alerting; expiry; rotation)
- **security/reviews/access_review_schedule.csv** (app, owner, frequency)

### Acceptance & QA (evidence-based)
- Attempt **legacy OTP** on admin → blocked; **FIDO2 required** (logs/screens).
- Device-noncompliant admin → blocked by CA (screenshot + sign-in log).
- PIM elevation auto-revokes ≤ **60 min**; approvals logged.
- JML test: create mover/leaver; entitlements adjust; leaver deprovisioned ≤ **24h**.
- SoD matrix committed; one conflict documented with compensating control.

### Timebox
- ⏱ 60 minutes (policy drafts + two live tests + artifacts committed)

---

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

## Day06 — Incident Playbooks (CXO Edition)

### Objectives
- Author **two playbooks** (Breach, Outage) with roles, triggers, evidence handling, containment, recovery, and after-action.
- Define **on-call** and comms matrix; include **legal, PR, customer** tracks.

### Lesson Summary
Speed and clarity beat improvisation. Playbooks must direct **who does what by when**, preserve evidence, and communicate status to stakeholders. Build once, drill often.

### Activities
1) **Roles & Paging**: IRT lead, Comms lead, Legal, Forensics, SRE/Infra; define on-call rotation & escalation.
2) **Triggers & First Hour**: Criteria to declare incident, initial triage, containment options, decision log.
3) **Evidence & Chain of Custody**: What to collect, how to store, who can access.
4) **Regulatory & Customer Comms**: Notification criteria/timelines, templates.
5) **Recovery & Lessons**: Service restoration steps, data validation, post-incident review.

### Deliverables
- **playbooks/incident_playbook_breach.md**
- **playbooks/incident_playbook_outage.md**
- **playbooks/comms_matrix.csv** (audience, channel, cadence, owner)
- **playbooks/oncall_contacts.yml** (primary, secondary, backup)
- **playbooks/evidence_checklist.md** (forensics, logs, snapshots)
- **playbooks/decision_log.md** (timestamped decisions + rationale)

### Acceptance & QA
- Each playbook names **on-call contact** and **external counsel/advisor** (if needed).
- First-hour checklist present; paging path tested (screenshot of page).
- Evidence checklist attached; chain-of-custody steps explicit.
- Two notification templates (internal, external) included.

### Timebox
- ⏱ 60 minutes

---

## Day07 — Weekly Review & Tabletop Summary (CXO Edition)

### Objectives
- Close the loop: validate **control coverage**, **risk updates**, and **incident readiness** via a short tabletop.
- Produce a concise report with **actions, owners, dates** and update artifacts.

### Lesson Summary
Operational excellence is a cadence. Use a 30-minute tabletop to expose gaps, then record decisions and update the system of record (controls, risks, playbooks).

### Activities
1) **Tabletop (30 min)**: Pick one playbook; run through a realistic scenario; record timeline & decisions.
2) **Gaps → Actions**: Convert gaps into tickets with owners & due dates.
3) **Update Artifacts**: If a control, risk, or playbook changed—commit the update.
4) **Metrics Refresh**: Recompute key KPIs (FIDO2 %, privileged minutes, EDR coverage, policy violations, Restore MTTR, MTTD, % SaaS on SSO/SCIM).

### Deliverables
- **security/week03_review_and_update.md**  
  Sections: Highlights, Control Status, Risks, Actions, Next Focus
- **tabletop/tabletop_timeline.csv** (timestamp, event, owner)
- **tabletop/action_register.csv** (action, owner, due, link)
- Updated **metrics/security_kpis.csv** (from Day02)

### Acceptance & QA
- **≥3 actions** with owners & dates; two tickets opened.
- At least one artifact updated (control, risk, or playbook) based on tabletop.
- Metrics refreshed and posted; deltas called out (↑/↓) with hypotheses.

### Timebox
- ⏱ 45 minutes
