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
