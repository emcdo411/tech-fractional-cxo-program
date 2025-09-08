Week12 — Day05: Capacity, Queues & “Liquidity” for AI (Compute & Throughput Buffers)

Save as: wk12/day05_capacity_queue_liquidity_buffers.md

CXO Lens: In 1988 it was liquidity; today it’s compute & throughput. We add capacity buffers, queue controls, and rate-limit hedges to survive spikes.

Objectives

Model capacity & queues for top use cases (p95 latency, drop risk).

Define buffer levels and rate-limit strategies by tier.

Put burst SLAs and credits into vendor contracts.

Activities (⏱ 75–90m)

Capacity Model (25m) — Arrival rates, service times, p95 latency target.

Buffers & Burst (20m) — Reserve %, pre-warmed instances, token buckets.

Queue Policies (20m) — Priorities, dead-letters, user UX during surge.

Vendor SLAs (10–25m) — Burst clause, credits, escalation path.

Deliverables

finops/capacity_model.xlsx • platform/queues/policies.md

vendor/contract_clauses_burst.md

Acceptance & QA

Stress test shows p95 ≤ 1200 ms during 2× volume spike.

Queue policy prevents task loss; vendors sign burst clauses.
