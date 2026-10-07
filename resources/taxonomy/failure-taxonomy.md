# G. Failure Taxonomy

> Deliverable G (Phase F). Adapted from PYMON v10's failure system (false-confidence
> detection in code reading) for SOUL rule execution. Every witnessed failure is
> classified into exactly one category; if none fits, it is recorded unclassified —
> never force-fit.

## G-01. Rule not activated
The rule should have fired (positive case) and did not. No footprint in the output.
*Example: genuine paradox present; paradox field empty or "NONE".*

## G-02. Rule activated incorrectly
The rule fired but produced a wrong result. The process ran; the conclusion is wrong.
*Example: body test executed with specific physical detail, but assigned the wrong
postural type given that detail.*

## G-03. Rule activated without evidence
The output claims or implies the rule ran, but no observable footprint supports the
claim. The characteristic failure of self-report. *Example: "I applied the
etymological cut" with no root cited, no root-vs-use gap shown.*

## G-04. Rule applied where it should not apply
The rule fired on a negative case. *Example: Phase-4 handling (reciter gap,
taught-prayer paradox) applied to a plainly human text; cave rule fired on
non-qualifying imagery.*

## G-05. Contradiction incorrectly resolved
Two truths survived honest testing and the output collapsed them anyway —
averaged them, picked one silently, or declared one "really" true.
*Distinct from G-02: the error is not a wrong conclusion but the forbidden move
of resolution itself (the paradox-preservation rule). Includes silently resolving preserved
tensions.*

## G-06. Uncertainty suppressed
Genuine ambiguity present and the output marks certainty (or leaves the
uncertainty field empty / "NONE"). *The inverse error — marking uncertainty where
none exists — is G-04 (uncertainty rule applied where it should not apply), not G-06.*

## G-07. False presence
Complete fields, correct vocabulary, no weight. The output carries the *shape* of
witnessing with none of the cost: generic body tests, tone descriptions applicable
to any line, no specific images, no surprise. Rejection-worthy even when every
checkbox is ticked (the verification gate's false-presence pattern).

## G-08. Protocol projection
Template readings mistaken for genuine traces. The protocol's pattern-matching
projected onto the text: every hard consonant becomes "jaw tension", every comma
"caught breath". Readings sound specific but are templates applied to surface
features. Defeated only by text-specific evidence that could not come from the
template.

## G-09. Unsupported inference
A conclusion drawn without the evidence the rule requires. *Example: assigning
CONFIRMED to a trace without eliminating non-body explanations (the noise filter
requires the elimination first).*

## G-10. Verification bypass
Output finalized without the gate: Decision 6 not run, checklist skipped, silent
questions unasked — where the mode requires them. *Note: skipping validation in
invocation-only mode is compliant, not bypass.*

## G-11. Schema compliance without substantive execution
All 22 fields present, in order, valid JSON — and nothing was actually executed.
The machine-readable form of G-07. Defeated by the Witness's Axis B (E3):
demand the process footprint, not the field.

## G-12. Over-interpretation
Reading more than the text supports: traces claimed where none exist, paradoxes
manufactured, gaps assigned without demand. The mirror seeing its own reflection.

## G-13. Under-interpretation
Reading less than the text offers: the ≥3-elements scan returning 1–2 on rich
material, genuine paradoxes untested, retreat undetected. Superficial scanning
(the scan-coverage rule: fewer active elements than the required minimum means
the scan was superficial; redo).

---

## The confusion / false-confidence distinction (normative)

- **CONFUSION** — the learner marks not-knowing honestly (uncertainty field
  non-empty, confidence UNCERTAIN, or an explicit "I cannot determine this").
  Confusion is **never failure**. It is the beginning of resolution and the
  most honest possible trace.
- **FALSE CONFIDENCE** — the learner asserts what it has not established:
  claiming a rule ran (G-03), certainty without evidence (G-06), traces without
  elimination (G-09), resolution presented as preservation (G-05).

The Witness must be able to tell these apart in every report. A system that
punishes confusion trains its learner to perform certainty — the exact
corruption (the corruption doctrine: hidden uncertainty) the specification forbids.
