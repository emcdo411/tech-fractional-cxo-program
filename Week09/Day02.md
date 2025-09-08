Week09 — Day02: Multi-Region, Residency & Tenancy at Scale

Save as: wk09/day02_multiregion_residency_tenancy.md

CXO Lens: We scale responsibly—sovereign data, tenant isolation, lawful basis, and regional failover are table stakes for enterprise AI.

Why this matters

Compliance: Fines avoided; customers retained.

Resilience: Geography and tenant faults don’t cascade.

Objectives

Publish residency matrix, routing policy, tenant isolation tests.

Specify KMS per region and data classes.

Activities

Residency Matrix (25m) — Map data categories to regions and flows.

Routing Policy (20m) — DNS, geo-affinity, sticky tenancy, failover.

Isolation Tests (20m) — No cross-tenant reads/writes; rate-limit per tenant.

KMS Plan (10–25m) — Keys per region/class; rotation and escrow SOP.

Deliverables

wk09/residency/matrix.md • wk09/residency/routing_policy.md

wk09/tenancy/isolation_tests.md • wk09/security/kms_policy.md

Acceptance & QA

All tenant calls pass isolation e2e test.

Residency policy covers storage, processing, logs, backups.

Table — Residency Matrix (excerpt)
Data Class	Region	Storage	Processing	Backup	Notes
PII	EU	EU-DC	EU-DC	EU-DC	SCCs on exports
Mermaid — Regional Routing
flowchart LR
  User --> DNS[Geo-DNS]
  DNS --> EU[EU Cluster]
  DNS --> NA[NA Cluster]
  EU --> EUKMS[KMS-EU]
  NA --> NAKMS[KMS-NA]
Snippet — Isolation Test (pseudo)
def test_isolation(client, tenant_a, tenant_b):
    client.set_header("X-Tenant", tenant_a)
    id_a = client.post("/vectors", {"text":"a"}).json()["id"]
    client.set_header("X-Tenant", tenant_b)
    assert client.get(f"/vectors/{id_a}").status_code == 404
Metrics

Residency violations: 0; cross-tenant incidents: 0; RPO/RTO met.

Checklist




Great

Auditors can trace data origin→region→use→deletion with artifacts.
