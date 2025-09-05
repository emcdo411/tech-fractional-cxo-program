# Week06 — Day05: Enterprise Integration, Zero Trust & Change Controls (CXO Edition)

> **CXO Lens (Deloitte-grade):** AI must **plug into the enterprise safely**. Today we standardize **APIs & events**, enforce **Zero Trust** across identities/devices/data, and make every change **traceable, approvable, and reversible**. The result: faster delivery **without** compliance or outage risk.

---

## Objectives
- Publish **API & event integration standards** (authN/authZ, quotas, schema/versioning, observability, idempotency).
- Implement **Zero Trust controls** for AI services (workforce/service identity, device posture, tenant data segmentation, residency).
- Strengthen **change management** (risk tiers, approvals, CAB/exception path, rollback evidence, auditability).

---

## Lesson Summary
Enterprise AI is a **supply chain of trust**. We separate **control plane vs data plane**, adopt **identity-based access** everywhere, and treat all changes as **surgical, reversible operations** with immutable logs. Integration contracts + Zero Trust + change controls = **safe velocity**.

---

## Activities (⏱ 90 minutes)
1) **API & Event Standards (30m)**  
   - Choose **OIDC/SPIFFE** for service identity; **mTLS** at the edge; **audience & scope** checks at gateway.  
   - Define **schema & versioning** (SemVer, `Accept: application/vnd.company.v2+json`), **CloudEvents** for async, **idempotency keys**.  
   - Wire **observability**: request IDs, traces, business metrics, quota counters.

2) **Zero Trust Policy Sets (30m)**  
   - **Per-environment** policy (dev/stage/prod): step-up auth, least privilege, break-glass with expiry.  
   - **Device posture** (EDR, disk encryption, OS patch level) for human access; **JIT elevation**.  
   - **Data segmentation**: tenant namespaces, residency pins, PII redaction, right-to-be-forgotten runbook.

3) **Change Controls & Rollback (30m)**  
   - Define **risk tiers** (Low/Med/High/Emergency) with approvers and evidence.  
   - Require **ADR** for integrations and model/prompt/dataset releases.  
   - Prove **rollback**: last-known-good composite (`model@x + prompt@y + data@z`) and restore steps.

---

## Deliverables
- `it/api_gateway_standards.md` — auth, quotas, headers, versioning, idempotency, observability  
- `security/zero_trust_integration.md` — identity, device posture, segmentation, residency, break-glass  
- `security/audit_logging_spec.md` — fields, retention, WORM storage, access review cadence  
- `it/change_management_policy.md` — risk tiers, approvers, CAB flow, rollback evidence, freeze policy  
- `runbooks/rollback_model_prompt_data.md` — step-by-step revert & validation  
- `observability/integration_dashboard_spec.md` — latency, error rate, auth failures, quota breaches, cost

---

## Acceptance & QA (evidence-based)
- **Gateway standard** approved by **Security + Platform**; one API upgraded to **v2** using the standard (headers, idempotency, traces).  
- **Zero Trust** enforced in **prod**: service OIDC + mTLS, device posture checks for console access, **tenant isolation verified**.  
- **Change policy** live: CAB calendar, **risk tier table**, and **rollback proof** for a simulated failed release.  
- **Audit logs** show **who/what/when/why** for model/prompt/data changes, retained in **WORM** storage.

---

## Integration Workflow (Mermaid)

```mermaid
flowchart LR
  dev["Dev PR"] --> ci["CI: build + tests + security scan"]
  ci --> stage["Stage deploy"]
  stage --> checks["SLO & guardrail checks"]
  checks --> cab["CAB approval"]
  cab --> prod["Prod deploy via gateway"]
  prod --> audit["Audit log + evidence store"]
  prod --> obs["Observability dashboards"]
  cab -->|fallback| rollback["Rollback to last good"]
  rollback --> audit
````

---

## API Gateway Standards (highlights)

**AuthN/AuthZ**

* **mTLS** at edge; **OIDC** tokens with `aud` = API, `scope` = operation; optional SPIFFE for workload IDs.
* **Least privilege** scopes; **JIT elevation** for sensitive routes; **deny-by-default**.

**Versioning & Backward Compatibility**

* Media-type versioning: `Accept: application/vnd.company.v2+json`; deprecations with **90-day** notice.
* **Schema registry** for events; **SemVer** with migration notes and test cases.

**Quotas & Idempotency**

* **Per-client quotas** by key & scope; 429 with retry-after.
* **Idempotency keys** (`Idempotency-Key` header) for POST/PUT; safe retries.

**Observability**

* Correlation ID (`X-Request-ID`), trace context.
* **Dimensions**: tenant, product, route, version; emit **latency p50/p95/p99**, error class, **auth failures**, **quota breaches**.

**Example request (HTTP)**

```http
POST /v2/rag/answer HTTP/1.1
Host: api.company.com
Authorization: Bearer eyJhbGciOi...
Idempotency-Key: 84b2e7c0-1a9f-4c8c-9b37-91c9
Accept: application/vnd.company.v2+json
X-Request-ID: 2c0f1c2e...

{"query":"pto accrual policy","tenant":"acme","context_limit":8}
```

---

## Zero Trust Integration (policy excerpt)

```yaml
principles:
  - identity_first: true         # no network trust
  - least_privilege: true
  - verify_explicitly: true      # device + user + workload
human_access:
  device_posture: { edr: required, disk_encrypt: required, os_patch_days: <=30 }
  sso: oidc+webauthn_mfa
  just_in_time: 60m elevation with audit trail
service_access:
  auth: oidc_service_tokens + mtls
  secrets: vault_scoped, rotation_days: 90
data_segmentation:
  tenant_namespace: per-tenant vectors/indexes
  residency: us-east | eu-west (pinned)
  pii: redact_pre_index: true
deletion:
  rtbF_sla_hours: 72
  proof_artifact: "audit/deletions/{id}.json"
```

---

## Change Management Policy (risk tiers)

| Tier          | Examples                                | Approvals                         | Evidence Required                                | Rollback RTO |
| ------------- | --------------------------------------- | --------------------------------- | ------------------------------------------------ | ------------ |
| **Low**       | Doc-only, non-code config behind flag   | Owner + On-call                   | Change ticket, peer review                       | ≤ 15 min     |
| **Medium**    | API v2 non-breaking, prompt minor bump  | Owner + Platform + Security       | ADR, tests, eval scores, SLO check               | ≤ 30 min     |
| **High**      | Model swap, schema change, new PII flow | Owner + Platform + Security + CAB | ADR, risk assess, dry-run, rollback plan & proof | ≤ 60 min     |
| **Emergency** | Sev-1 mitigation                        | Incident Commander + Security     | Post-hoc ADR, full audit bundle within 24h       | ASAP         |

**Freeze policy:** SLO error-budget breach ⇒ **feature freeze** until remediated.

---

## Rollback & Evidence (composite releases)

* Release tag: `model@1.4.2 + prompt@2.3.0 + data@golden_2025_09`.
* **One-click revert** restores prior composite; **post-checks**: health, costs, guardrails.
* **Proof artifact** stored to WORM: telemetry slice, reason, approver, checksum.

**Audit log (spec excerpt)**

```yaml
event: "model_release"
who: "svc-deployer"
when: "2025-09-04T17:12:00Z"
what:
  model_id: "cust-copilot-1.3.4"
  prompt_id: "compose_email_v5"
  dataset: "golden_2025_09"
  checksum: "sha256:..."
why: "Quality +7% on golden set; cost -12%"
ticket: "EXP-1421"
decision: "Approved by CAB"
rollback_to: "cust-copilot-1.3.3/compose_email_v4/golden_2025_08"
```

---

## Observability & Dashboards

* **SLIs:** p50/p95/p99 latency, 4xx/5xx, auth failures, quota hits, **unit cost / request**, tenant error skew.
* **Alerts:** Pager on latency/error spikes; Slack on auth failures/quota saturation; weekly cost report.
* **Drilldowns:** by route, version, tenant, environment; link to **release tag** and **ADR**.

---

## Governance & Compliance

* **Access reviews** quarterly (human & service accounts).
* **WORM retention** for audit logs (12–24 months); **tamper-evident** with checksums.
* **PII contracts**: collection minimization, residency, DLP at edge & index.
* **Vendor neutrality:** abstraction at gateway/router; portability tests each quarter.

---

## RACI

* **Responsible:** Platform Eng (gateway), Security (Zero Trust), SRE (observability), Data Eng (segmentation)
* **Accountable:** CTO (platform), CISO (controls)
* **Consulted:** Legal/Privacy, Finance (FinOps), Product Owners
* **Informed:** ELT, BU leaders, Support

---

## What “Great” Looks Like (Harvard/MIT CXO rubric)

* **Contracted:** APIs/events with clear versioning and idempotency; consumers self-serve.
* **Trusted:** Identity-first access; tenant isolation verified; deletion proofs produced.
* **Controllable:** Every release has ADR, approval, telemetry, and **reliable rollback**.
* **Visible:** Dashboards show health and **\$/request**; anomalies page the right team.

---

## Timebox & Follow-ups

* **⏱ 90 min:** 30 API standards • 30 Zero Trust • 30 change controls.
* **T+48h:** publish standards + update one API to v2; enable posture checks in prod.
* **T+7d:** run a **rollback drill** and submit audit bundle to CAB.

```
::contentReference[oaicite:0]{index=0}
```

