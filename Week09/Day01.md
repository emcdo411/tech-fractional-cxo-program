Week09 — Day01: Enterprise Integration Blueprint (ERP/CRM/ITSM, Event Bus, APIs)

Save as: wk09/day01_enterprise_integration_blueprint.md

CXO Lens: Integration is a product. We establish an opinionated, secure fabric—canonical events, API standards, and change control—so pilots become dependable enterprise services.

Why this matters (board rationale)

Reliability: A single integration blueprint reduces outages and data drift.

Speed: Reusable patterns cut delivery time by 30–50% for every new use case.

Risk: Versioning, authZ, and rate-limits prevent runaway costs and incidents.

Objectives

Map systems of record (ERP/CRM/ITSM), canonical events, and API standards.

Define authN/Z, rate limits, schema registry, and change gates (CAB).

Publish an integration RACI and OpenAPI conventions with lifecycle controls.

Lesson Summary

We build a contract-first integration layer backed by a schema registry and event bus. We adopt OpenAPI + AsyncAPI with semver, and wire CAB rules into CI/CD.

Activities (⏱ 75–90 minutes)

System Map (25m) — Identify SoR/SoT, event producers/consumers, payload owners.

Standards (20m) — OpenAPI, AsyncAPI, semver, error envelope, pagination, retries.

Controls (20m) — OAuth2/OIDC, scopes/claims, rate-limits, idempotency keys.

Change Gates (10–25m) — CAB checklist, backward-compat policy, deprecation plan.

Deliverables

wk09/integration/blueprint.md

wk09/integration/standards/openapi_conventions.md

wk09/integration/raci.md

wk09/integration/change_gates.md

Acceptance & QA

All APIs have OpenAPI specs, error envelope, pagination, idempotency.

Events described in AsyncAPI with owners and retention.

CAB rules and semver policy published; API linter enabled in CI.

Table — Integration RACI (excerpt)
Component	R	A	C	I
Customer API	Platform	Head of Platform	Security, Product	ELT
Order Event	Domain Team	Domain VP	Data, SRE	Org
Mermaid — Enterprise Fabric
flowchart LR
  CRM[(CRM SoR)] -->|CustomerUpdated| BUS((Event Bus))
  ERP[(ERP SoR)] -->|OrderCreated| BUS
  ITSM[(ITSM)] -->|Incident| BUS
  BUS --> API[API Gateway]
  API --> Apps[Copilots/Services]
  subgraph Controls
    CAB[Change Advisory Board]
    REG[Schema Registry]
  end
  API --> REG
  CAB -. approves .-> API
Snippet — Error Envelope (OpenAPI fragment)
components:
  schemas:
    Error:
      type: object
      required: [traceId, code, message]
      properties:
        traceId: { type: string }
        code: { type: string, example: "RATE_LIMIT" }
        message: { type: string }
        details: { type: object }
Metrics to track

API success rate ≥ 99.5%, p95 latency ≤ 400 ms, version adoption curve.

Event lag ≤ 5 s, schema violations = 0 per week.

Day-end checklist




What “great” looks like

Teams ship integrations without meetings—contracts and controls are self-serve.
