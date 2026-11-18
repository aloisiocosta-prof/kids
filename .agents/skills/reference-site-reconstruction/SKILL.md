---
name: reference-site-reconstruction
description: Reconstruct an independently designed Flutter application from publicly observable website behavior. Use when analyzing a reference site, extracting page and user-flow evidence, and implementing an original Web + Android product without copying proprietary code or assets.
---

# Reference-site reconstruction

## Workflow
1. Identify the target URL and the exact public pages that can be reached without authentication.
2. Record visible sections, navigation destinations, inputs, validation, state transitions, responsive behavior, and outputs.
3. Separate direct observations, inferences, and unknowns. Do not describe a hidden authenticated workflow as inspected.
4. Prefer runtime evidence from REA browser tools when available. Use the exact tool schemas exposed by the connected REA server; do not invent tool names or argument shapes.
5. Capture an evidence ledger with URL, timestamp, scenario, observation, confidence, and limitations.
6. Translate observed user value and flow into a distinct product design. Do not reuse logos, exact marketing copy, copyrighted illustrations, testimonials, source code, or private endpoints.
7. Implement the product in Flutter/Dart with shared domain logic and platform-aware Web/Android UI.
8. Verify responsive layouts, keyboard/focus behavior, validation, accessibility labels, image selection, state handling, and platform builds.
9. Keep payment, accounts, remote storage, messaging, AI generation, and child-photo processing out of scope until their requirements, lawful basis, security controls, and provider credentials are explicitly specified.

## Required evidence notes
- `OBSERVED`: directly visible or reproduced in a reachable public scenario.
- `INFERRED`: plausible explanation supported by partial evidence.
- `UNKNOWN`: not accessible or not yet verified.
- Every implementation decision that departs from observed behavior should be labelled as a product decision.

## Safety and privacy
Use only pages and assets that are public and authorized for inspection. Do not bypass authentication, paywalls, access controls, or anti-bot controls. Do not collect or retain real children's photos for testing. Use synthetic data and local fixtures.
