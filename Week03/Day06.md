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
