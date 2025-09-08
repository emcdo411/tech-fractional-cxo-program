Week11 — Day04: Controls Architecture & Control Library (Prevent/Detect/Correct)

Save as: wk11/day04_controls_architecture_library.md

CXO Lens: Policy without controls is theater. We codify preventive, detective, and corrective controls mapped to risks, with test evidence.

Objectives

Build control library mapped to taxonomy & appetite.

Define control tests (frequency, sample size, thresholds).

Create CSA (Control Self-Assessment) routine.

Activities (⏱ 75–90m)

Control Mapping (25m) — e.g., prompt allow-list, PII scrub, sandbox.

Test Design (20m) — Automated checks + manual samples.

CSA Process (20m) — Quarterly attestations + evidence links.

Exceptions (10–25m) — Time-boxed waivers; compensating controls.

Deliverables

risk/controls/library.yaml

risk/controls/tests.md

risk/controls/csa_process.md

Library Snippet
- id: CTRL-RET-001
  name: "Retrieval PII scrub"
  type: preventive
  risk: privacy_leakage
  test:
    frequency: daily
    sample: 500 responses
    threshold: "PII_detected == 0"
    escalate: "yellow->AIRC in 24h; red->freeze"
