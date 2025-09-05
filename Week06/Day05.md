# Week06 — Day05: Enterprise Integration, Zero Trust & Change Controls (CXO Edition)

## Objectives
- Define **API & event integration standards** (auth, quotas, schema, observability).
- Implement **Zero Trust** controls for AI services (identity, device posture, data segmentation).
- Strengthen **change management** (CAB, approvals, rollback, audit).

## Lesson Summary
AI features must plug into the enterprise without blowing a fuse. We standardize integration, lock down access, and make every change auditable.

## Activities (⏱ 90 min)
- **API standards (30m):** Auth (mTLS/OIDC), quotas, schema versioning, observability.
- **Zero Trust (30m):** Policy sets by environment; device posture; data segmentation.
- **Change controls (30m):** CAB scope, risk levels, approvals, rollback evidence.

## Deliverables
- `it/api_gateway_standards.md`
- `security/zero_trust_integration.md`
- `security/audit_logging_spec.md`
- `it/change_management_policy.md`

## Acceptance & QA
- Gateway standard approved by **Security + Platform**.
- Audit logs show **who/what/when/why** for model, prompt, and data changes.
- CAB policy defines **risk tiers, approvals, and rollback proof** requirements.

### Audit Fields (spec excerpt)
```yaml
event: "model_release"
who: "svc-deployer"
when: "2025-09-04T17:12:00Z"
what:
  model_id: "cust-copilot-1.3.4"
  prompts_id: "compose_email_v5"
  checksum: "sha256:..."
why: "Quality +7% on golden set; cost -12%"
ticket: "EXP-1421"
