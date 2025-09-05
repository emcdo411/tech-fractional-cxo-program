# Week06 — Day06: Commercial Strategy — Pricing, SLAs & Vendor Management (CXO Edition)

## Objectives
- Build **pricing scenarios** (token, seat, outcome) and total cost envelopes by product.
- Define **SLA/credits**, **DPA** positions, and **AI indemnity** stance with Legal.
- Publish **RFP template** and **vendor scorecard** for competitive sourcing.

## Lesson Summary
Great tech fails without smart contracts. We model revenue and cost, set enforceable SLAs, and negotiate from strength.

## Activities (⏱ 90 min)
- **Pricing (35m):** Scenarios + sensitivity; breakeven & margin analysis.
- **Legal (30m):** DPA, residency, audit rights, IP & indemnity positions.
- **Sourcing (25m):** RFP + scorecard: capability fit, security, roadmap, TCO.

## Deliverables
- `finance/pricing_scenarios.xlsx`
- `vendor/sla_matrix.csv`
- `legal/ai_dpa_addendum.md`
- `legal/indemnity_positions.md`
- `procurement/rfp_template.md`
- `vendor/vendor_scorecard.csv`

## Acceptance & QA
- Pricing model includes **3 scenarios** + sensitivity; margin ≥ target.
- SLA matrix ties **credits to measurable SLOs**; legal templates approved to send.
- Vendor scorecard weights published; ties to **risk & roadmap**.

### SLA Matrix (CSV sketch)
```csv
SLO,Target,Measure,Credit,Notes
Availability,99.9%,synthetic checks,5% MRC if <99.5%,monthly
Latency p95,<=1200ms,APM,2% MRC if >1400ms 3d+,core paths
Security Incident Sev-1,0,IR logs,10% MRC per incident,notification<=1h
