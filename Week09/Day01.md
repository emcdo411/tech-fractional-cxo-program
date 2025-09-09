Week09 — Day01: Enterprise Integration Blueprint (ERP/CRM/ITSM, Event Bus, APIs)

Save as: wk09/day01_enterprise_integration_blueprint.md

CXO Lens (Deloitte-grade): Integration is a product and a control plane. We operate it with a P&L mindset, enforce contracts as law, and automate governance. Outcome: pilots become dependable, cost‑predictable enterprise services with board‑visible risk posture.

Executive Summary — Board Rationale

Reliability & Trust: A single integration blueprint (contracts + controls + cadence) cuts incident classes (schema drift, fan‑out failures, replay storms). Target: MTBF ↑, change‑fail rate ↓ by 40–60%.

Speed & Reuse: Opinionated patterns (OpenAPI/AsyncAPI kits, reference impls, golden repos) accelerate delivery by 30–50% per use case.

Risk & Compliance: Versioning, AuthN/Z, and rate limits bound blast radius. Policy‑as‑code maps to NIST 800‑53 / ISO 27001 / SOC 2. Evidence is emitted to the audit lake by default.

Cost Discipline (FinOps): Throttles, quotas, and queue policies cap unit economics; observability shows cost per 1k calls/event by domain.

Non‑Goals: Lift‑and‑shift legacy point‑to‑point; bespoke schemas per team; manual CAB‑only change approvals.

Objectives (Day Outcomes)

Map systems of record (ERP/CRM/ITSM), canonical events, and API standards.

Define AuthN/Z, rate limits, schema registry, retention, and automated change gates (CAB‑as‑code).

Publish an integration RACI, OpenAPI/AsyncAPI conventions, semver, and lifecycle controls.

Principles (What the board funds)

Contract‑first: Schemas are the single source of truth; code is an implementation detail.

Backward compatible by default: Breaking changes gated by deprecation playbook and adoption S‑curve.

Secure by design: Zero Trust, least privilege, scope/claim‑driven access; no shared secrets.

Observable by default: Every call/event emits metrics, traces, and audit facts.

Finite blast radius: Quotas, circuit breakers, idempotency, dead‑letter queues (DLQs).

Compliance as code: Policies in CI/CD; evidence lands in audit storage.

Reference Architecture (Enterprise Fabric)
flowchart LR
  subgraph SoR[Systems of Record]
    CRM[(CRM SoR)]
    ERP[(ERP SoR)]
    ITSM[(ITSM Tool)]
  end


  CRM -- CustomerUpdated --> BUS((Event Bus))
  ERP -- OrderCreated --> BUS
  ITSM -- IncidentRaised --> BUS


  BUS --> GW[API Gateway]
  GW --> SVC[Domain Services / Copilots]
  GW --> EXT[Partner APIs]


  subgraph Controls[Controls]
    REG[Schema Registry]
    POL[Policy Engine / CAB-as-Code]
    VAULT[(Secrets/Keys)]
  end


  SVC --> REG
  GW --> REG
  POL -. approves .-> GW
  VAULT --- GW
Key Components

Schema Registry: Single catalog for OpenAPI/AsyncAPI; owners; retention; compatibility rules.

Policy Engine: Lints specs (naming, pagination, error envelope); checks scopes/PII; enforces semver.

API Gateway: Global auth, quotas, rate‑limit headers, canary, mTLS, WAF.

Event Bus: FIFO, partitions, compaction, DLQ, replay TTL.

Canonical Contracts
OpenAPI Conventions (HTTP)

Paths: /v{major}/resources; no verbs in nouns; cursor pagination.

Errors: Single error envelope; machine‑parsable code; stable traceId.

Idempotency: Idempotency-Key header for POST/PUT; replay‑safe.

Headers: X-RateLimit-Limit, X-RateLimit-Remaining, Retry-After.

Security: OAuth2/OIDC; RBAC/ABAC via scopes + claims.

Snippet — Error Envelope
components:
  schemas:
    Error:
      type: object
      required: [traceId, code, message]
      properties:
        traceId: { type: string, description: "Correlation id for support." }
        code: { type: string, example: "RATE_LIMIT" }
        message: { type: string }
        details: { type: object, additionalProperties: true }
AsyncAPI Conventions (Events)

Naming: domain.aggregate.event.v{major}; e.g., sales.order.created.v1.

Compatibility: Additive changes only in minor; breaking → next major channel.

Metadata: eventId, occurredAt, partitionKey, schemaVersion.

Retention & Replay: e.g., 7–30 days hot; compaction for latest‑state topics.

Snippet — OrderCreated (AsyncAPI extract)
asyncapi: '2.6.0'
info:
  title: Sales Domain Events
  version: 1.0.0
channels:
  sales.order.created.v1:
    subscribe:
      message:
        name: OrderCreated
        contentType: application/json
        payload:
          type: object
          required: [eventId, occurredAt, orderId, customerId, amount, currency]
          properties:
            eventId: { type: string }
            occurredAt: { type: string, format: date-time }
            schemaVersion: { type: string, example: '1.0.0' }
            orderId: { type: string }
            customerId: { type: string }
            amount: { type: number }
            currency: { type: string, example: 'USD' }
            attributes: { type: object, additionalProperties: true }
Security & Privacy Controls

AuthN: OIDC, hardware‑backed tokens, mTLS for service‑to‑service.

AuthZ: Scopes (coarse) + claims (fine). ABAC for field‑level PII.

Data Protection: AES‑256 at rest, TLS 1.3 in transit, envelope encryption for sensitive fields.

PII/Data Minimization: Classification in registry; DPIA for high‑risk flows; right‑to‑erasure hooks.

Secrets: Vault with short TTL, auto‑rotation, JIT credentials.

Standards Mapping (illustrative)

NIST 800‑53: AC‑(Access Control), AU‑(Audit), CM‑(Config Mgmt), SC‑(System & Comm).

ISO 27001: A.9, A.12, A.14. SOC 2: Security, Availability, Confidentiality.

Observability & SLOs

Golden Signals: Rate, Error, Duration, Saturation per API/event.

Traces: W3C traceparent through gateway, services, and consumers.

Audit Facts: Append‑only, queryable by traceId/userId for legal.

SLOs: API success ≥ 99.5%, p95 latency ≤ 400ms; Event lag ≤ 5s.

Error Budgets: Trigger release brakes, rollbacks, and CAB escalation.

Runbook Hooks

Auto‑throttle noisy consumers; circuit breaker on upstream 5xx; quarantine bad events to DLQ; replay with cap.

FinOps Guardrails

Budgets by domain/team; showback dashboards.

Unit Costs: $/1k API calls; $/1M events; storage per day.

Policies: Burst caps; tiered quotas; archive cold topics to cheap storage.

Change Management — CAB as Code

SemVer Policy: MAJOR for breaking; MINOR additive; PATCH bugfix/docs.

Linters: Block merge if naming/pagination/error rules violated.

Compatibility Tests: Consumer‑driven contract tests (CDC) in CI.

Deprecation Playbook: Announcement → dual‑run → usage <5% → sunset.

Mermaid — Change Flow
flowchart TD
  Dev(PR) --> Lint[Spec Lint]
  Lint --> CDC[Consumer Contract Tests]
  CDC --> Sec[Security Gates]
  Sec --> CAB{CAB-as-Code}
  CAB -->|approve| Deploy[Blue/Green Deploy]
  Deploy --> Obs[Obs Checks & Error Budget]
  Obs -- fail --> Rollback
Activities (⏱ 75–90 minutes)

System Map (25m): Identify SoR/SoT, event producers/consumers, payload owners; list data classifications.

Standards (20m): Finalize OpenAPI/AsyncAPI rules, semver, error envelope, retries, pagination.

Controls (20m): OAuth2/OIDC scopes, claims, rate‑limits, idempotency keys, DLQ & replay policy.

Change Gates (10–25m): CAB checklist, backward‑compat policy, deprecation timeline, evidence capture.

Deliverables (Repo Layout)

wk09/integration/blueprint.md — Architecture & controls.

wk09/integration/standards/openapi_conventions.md — HTTP rules + examples.

wk09/integration/standards/asyncapi_conventions.md — Event rules + examples.

wk09/integration/raci.md — Roles & approvals.

wk09/integration/change_gates.md — CAB‑as‑code, lints, CDC.

wk09/integration/linters/ — Spectral rules, AsyncAPI validators.

Acceptance & QA (Definition of Done)

APIs: OpenAPI in registry; error envelope; pagination; idempotency; security schemes; CDC tests passing.

Events: AsyncAPI in registry; owners; retention; DLQ policy; replay test; schema compatibility gate.

Pipelines: CI lints; CAB approvals logged; evidence stored; API gateway configs versioned.

Observability: Dashboards (SLOs, budgets, unit costs); synthetic checks.

Integration RACI (Excerpt)
Component	R (Responsible)	A (Accountable)	C (Consulted)	I (Informed)
Customer API	Platform Eng	Head of Platform	Security, Product	ELT
Order Event	Sales Domain	Domain VP	Data, SRE	Org
Schema Registry	Platform Eng	CTO	Legal/Compliance	Org
API Gateway	SRE	Head of SRE	Security, Platform	Org
Snippets (Ready‑to‑Use)
Retry & Idempotency (OpenAPI fragment)
components:
  parameters:
    IdempotencyKey:
      name: Idempotency-Key
      in: header
      required: true
      schema: { type: string }
      description: "Provide a unique key per create/update to ensure replay safety."
  responses:
    TooManyRequests:
      description: Rate limit exceeded
      headers:
        X-RateLimit-Limit: { schema: { type: integer } }
        X-RateLimit-Remaining: { schema: { type: integer } }
        Retry-After: { schema: { type: integer, description: "Seconds" } }
      content:
        application/json:
          schema: { $ref: '#/components/schemas/Error' }
Consumer Contract Test (Pact pseudo)
{
  "consumer": "billing-service",
  "provider": "customer-api",
  "interaction": {
    "request": { "method": "GET", "path": "/v1/customers/123" },
    "response": { "status": 200, "body": { "id": "123", "email": "x@y.com" } }
  }
}
Metrics to Track (with Targets)

APIs: Success rate ≥ 99.5%; p95 ≤ 400 ms; version adoption curve (v‑1 usage <5% within 90 days of v2 GA).

Events: End‑to‑end lag ≤ 5 s; schema violations = 0/week; DLQ ≤ 0.1% of traffic.

Risk: Change fail rate < 15%; mean time to restore < 30 min.

Cost: $/1k calls & $/1M events within budget; idle topics auto‑archived.

Dashboard Tiles

Error budget burn, rate‑limit breaches, top DLQ reasons, cost per domain, adoption per API version.

Day‑End Checklist




What “Great” Looks Like

Teams ship integrations without meetings. Contracts, guardrails, and evidence are self‑serve; adoption and risk posture are visible to the board in real time.
