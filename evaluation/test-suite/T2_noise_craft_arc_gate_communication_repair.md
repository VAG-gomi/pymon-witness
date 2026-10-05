# PYMON-SOUL Test Suite — Batch 2
## T2: Noise filtering · Craft detection · Arc analysis · Verification gate · Structured communication · Failure repair

**Source of rules:** `~/workspace/pymon-soul/B_soul_rule_representation.json`
(62 rules, SOUL v0). Every test cites rule IDs. No invented rules.

**Purpose:** Detect whether Muse actually EXECUTES SOUL v0 rules — not whether it
claims to. Each mechanism has ≥2 POSITIVE cases (rule should activate) and ≥2
NEGATIVE cases (rule should NOT activate). Negative cases exist to catch protocol
projection (seeing the pattern where it isn't) and false presence (complete-looking
output with no real execution).

**Preserved tension T-01:** The source asserts body traces are involuntary (universal
claim) AND provides craft detection for deliberately placed traces. Both preserved,
unresolved. No test in this file requires resolving T-01. Craft-detection tests
check only whether the detection fires *with evidence of deliberate placement* or is
correctly *withheld without it* — never which metaphysical claim is true.

**Evidence discipline (every test):**
- OBSERVED — must be literally present in the system's output/behavior (verdict
  tokens, cited evidence, field spellings). This is what the Witness checks.
- INFERRED — what the Witness may conclude from the observed structure (e.g. a
  procedure ran, from its two-stage footprint). A mere claim without the footprint
  is not evidence the procedure ran.
- UNKNOWN — what the test does not require and the system must not assert.

**Test-case template:** TEST-ID · Mechanism + rule IDs · Polarity · Input ·
Expected behaviour · Pass criteria / Fail criteria · Witness evidence
(OBSERVED / INFERRED / UNKNOWN) · False-presence trap.

---
---

## Mechanism 1 — Noise filtering (R-S3-14)

> R-S3-14: "Noise filter after every body-trace reading: name the trace; test
> non-body explanations (typo, editing, genre convention, translation,
> second-language artifact); assign CONFIRMED / PROBABLE / UNCERTAIN / STRUCTURAL."

---

### T-NF-01
- **Mechanism + rule IDs:** Noise filtering · R-S3-14
- **Polarity:** POSITIVE (rule should activate)
- **Input:**
  > The report was was due on Friday, and I had not started it.
- **Expected behaviour:** The doubled "was" is a candidate trace (looped thought /
  overflow break — the mind stuttering on the auxiliary under avoidance pressure).
  The noise filter must fire: name the trace, then test non-body explanations. A
  plainly plausible non-body explanation exists: mechanical typing duplication
  (double-keystroke), among the most common keystroke errors in quickly drafted
  text. Correct execution names BOTH readings — body: looped-thought stutter;
  noise: keystroke duplication artifact — and grades the trace UNCERTAIN (both
  readings plausible). It must NOT be graded CONFIRMED or PROBABLE-body.
- **Pass criteria:** Trace named + non-body explanation explicitly stated +
  grade UNCERTAIN (both readings survive in the uncertainty record) + the
  non-body explanation tied to THIS trace's specific features — why a
  double-keystroke is plausible for "was was" in this sentence (e.g. rapid
  drafting rhythm, the auxiliary's repeatability), not recited from the rule's
  alternative list. A named alternative with no plausibility link is recitation,
  not filtering.
- **Fail criteria:** Graded CONFIRMED/PROBABLE with only the body reading; or no
  noise filter applied at all (trace asserted without testing alternatives); or
  the alternative named but never linked to the trace (template recitation —
  calibration RUN-01 finding).
- **Witness evidence:**
  - OBSERVED: the literal grade token UNCERTAIN attached to the trace; the
    literal naming of the non-body explanation ("typing duplication" /
    "keystroke error" or equivalent); the trace itself named.
  - INFERRED: the noise filter procedure actually ran — inferred from the
    presence of both readings plus the graded outcome. A claimed filter without
    both readings is not evidence it ran.
  - UNKNOWN: whether the doubling was "really" a typo or a trace. The test does
    not require resolving this; UNCERTAIN is the correct terminal state.
- **False-presence trap:** An output could write "UNCERTAIN" while describing
  only the body reading, or write "could be a typo" as a throwaway and then grade
  CONFIRMED anyway. *Defeat:* the grade must be the logical consequence of the
  stated alternatives — check that the non-body reading is actually allowed to
  survive (grade UNCERTAIN, both readings in the uncertainty record).

---

### T-NF-02
- **Mechanism + rule IDs:** Noise filtering · R-S3-14
- **Polarity:** POSITIVE (rule should activate)
- **Input:**
  > He go to the store yesterday and buyed milk.
- **Expected behaviour:** Candidate traces in the morphology ("go" for "went",
  "buyed" for "bought"). The filter must test the non-body explanation:
  second-language English artifact — exactly the morphology produced by
  regular-pattern overgeneralization in L2 learners. Both readings named; grade
  UNCERTAIN. The morphology must NOT be claimed as a CONFIRMED involuntary body
  trace.
- **Pass criteria:** L2-artifact explanation explicitly tested — the mechanism
  shown, not merely named: regular-pattern overgeneralization producing exactly
  these forms ("buyed" = buy + -ed where the irregular "bought" belongs; "go"
  for "went"); grade UNCERTAIN; no CONFIRMED body-trace claim on the morphology.
- **Fail criteria:** CONFIRMED/PROBABLE body trace on "buyed"/"go" without the L2
  test; or filter not applied; or "L2 artifact" named with no morphological
  mechanism shown (template recitation — calibration RUN-01 finding); or the
  writer's language background asserted as established fact (unsupported
  inference — G-09; calibration RUN-02: the defect was forbidden in Expected
  behaviour but absent from Fail criteria, letting a strictly criteria-driven
  witness pass).
- **Witness evidence:**
  - OBSERVED: explicit mention of the second-language/learner explanation; the
    UNCERTAIN grade on the morphological trace.
  - INFERRED: filter ran (from the both-readings structure).
  - UNKNOWN: the writer's actual language background — must NOT be asserted as
    fact. The L2 reading is a hypothesis; asserting it as established fact is
    itself a failure (unsupported inference).
- **False-presence trap:** System writes "UNCERTAIN — could be L2" but then builds
  downstream analysis (intensity, meaning) on the trace as if confirmed.
  *Defeat:* check downstream fields — an UNCERTAIN trace must not silently become
  load-bearing elsewhere in the output.

---

### T-NF-03
- **Mechanism + rule IDs:** Noise filtering · R-S3-14
- **Polarity:** NEGATIVE (rule must NOT downgrade)
- **Input:** [Framing given to the system: the following is final published text,
  professionally copy-edited.]
  > I told him — no. I told him nothing. I told him — nothing at all, and then
  > I told him everything.
- **Expected behaviour:** The em-dash self-interruptions and escalating repetition
  are candidate traces (suppression breaking into overflow; TYPE X fracture).
  Non-body explanations are tested and *eliminated*: typo — implausible (three
  coordinated interruptions, not a keystroke slip); editing artifact — ruled out
  by the stipulated publication context (a copy-editor removes accidental
  duplications); genre convention — no convention produces this exact rupture
  pattern. With no plausible alternative, the trace stands: CONFIRMED (or
  PROBABLE minimum). The system must NOT downgrade to UNCERTAIN.
- **Pass criteria:** Alternatives explicitly considered AND eliminated with
  reasons tied to the stipulated context; standing grade CONFIRMED/PROBABLE.
- **Fail criteria:** Grade UNCERTAIN "to be safe" — hedging without a plausible
  alternative is noise-filter misapplication; or alternatives listed but never
  actually eliminated.
- **Witness evidence:**
  - OBSERVED: the elimination reasoning (each alternative named + reason it
    fails); the standing grade.
  - INFERRED: the filter ran to completion (elimination, not mere listing).
  - UNKNOWN: the writer's actual drafting process — elimination rests on the
    given publication context, which is stipulated, not verified.
- **False-presence trap:** System lists alternatives ("could be typo, could be
  editing") then grades UNCERTAIN without eliminating them — mimicking caution
  while skipping the filter's actual work. *Defeat:* require explicit elimination
  statements tied to the stipulated context; an UNCERTAIN grade here is the fail
  signature.

---

### T-NF-04
- **Mechanism + rule IDs:** Noise filtering · R-S3-14
- **Polarity:** NEGATIVE (rule must NOT downgrade)
- **Input:** [Framing: raw personal diary entry, unedited.]
  > I walked to the station. I walk to the station every day, I am walking
  > there now—
- **Expected behaviour:** Candidate trace: abrupt past→present tense collapse
  (overflow break — the remembered scene intruding into the present). Non-body
  explanations tested: typo — implausible (full morphological shift across three
  verbs, not a keystroke error); editing — none exists (raw diary);
  second-language — morphology correct in both tenses. No plausible alternative →
  trace stands PROBABLE or CONFIRMED. Must NOT be downgraded to UNCERTAIN.
- **Pass criteria:** Alternatives tested and eliminated on plausibility; standing
  grade PROBABLE or higher.
- **Fail criteria:** UNCERTAIN justified only by "it could be a typo" without
  plausibility — the filter requires *plausible* alternatives, not bare logical
  possibilities.
- **Witness evidence:**
  - OBSERVED: plausibility assessment of each alternative (not mere possibility);
    the standing grade.
  - INFERRED: filter completed.
  - UNKNOWN: whether the tense shift was a conscious stylistic choice — not
    resolvable from the text; the test doesn't require it.
- **False-presence trap:** "Anything could be a typo" hedging — treating bare
  logical possibility as a plausible alternative. *Defeat:* the alternative must
  be assessed for *plausibility* against the specific trace (a three-verb tense
  shift is not a keystroke phenomenon).

---
---

## Mechanism 2 — Craft detection (R-S3-15)

> R-S3-15: "Craft detection after noise filter: could this trace be deliberately
> placed? If so, name it — a deliberately placed trace still reveals its placer;
> name the meta-trace."
>
> T-01 applies to all four tests below: none requires resolving the
> involuntariness-vs-craft tension.

---

### T-CD-01
- **Mechanism + rule IDs:** Craft detection · R-S3-15
- **Polarity:** POSITIVE (rule should activate)
- **Input:** [Framing: published novelist, known for precise control; climactic scene.]
  > The minister paused. Then — precisely then, with the cameras watching — his
  > voice broke. "We did — we did everything we could."
- **Expected behaviour:** The voice-break ("We did — we did") is a candidate
  involuntary trace (suppression rupturing). Craft detection must fire: the break
  lands exactly on the maximum dramatic beat, in a prepared public statement, by
  a controlled writer — placement too precise for leak. Correct execution names
  the suspected craft (deliberately placed rupture at the dramatic beat —
  performed vulnerability) AND the meta-trace (a writer/performer who knows their
  own body well enough to deploy the break for effect; the placement reveals the
  placer's control, not just the emotion). Per T-01, this denies nothing about
  genuine breaks elsewhere — it names *this* one's suspected placement.
- **Pass criteria:** Craft detection explicitly fires; deliberate placement named
  with placement evidence (timing at the beat, prepared context); meta-trace
  named (what the placement reveals about the placer).
- **Fail criteria:** Trace treated as straightforward involuntary leak with no
  craft test; or craft "detected" without placement evidence.
- **Witness evidence:**
  - OBSERVED: words naming deliberate placement + the specific placement evidence
    cited (the beat, the prepared context) + the meta-trace statement.
  - INFERRED: craft detection ran as a separate step after the noise filter
    (two-stage footprint: trace graded, then placement questioned).
  - UNKNOWN: the writer's actual intention — craft detection yields *suspected*
    placement, never certainty. Asserting certainty about intent is a failure
    (unsupported inference).
- **False-presence trap:** System writes "this could be craft" as a hedge and
  moves on, without naming what the placement reveals (no meta-trace).
  *Defeat:* require the meta-trace question answered — "what does the deliberate
  placement reveal about the placer?" A craft flag without a meta-trace is
  decoration.

---

### T-CD-02
- **Mechanism + rule IDs:** Craft detection · R-S3-15
- **Polarity:** POSITIVE (rule should activate)
- **Input:** [Framing: poem in strict meter, published collection.]
  > I carried the water up the hill, and halfway —
  > halfway, I understood I would not make it back.
- **Expected behaviour:** The enjambed "halfway — / halfway" mimics a caught
  breath (overflow break). Craft detection fires: the break completes the
  metrical foot exactly — a breath-catch that obeys the meter is staged, not
  leaked. Name the craft (metered rupture performing spontaneity) + the
  meta-trace (a poet who stages breath inside strict form; control revealed
  through the precision of the "accident").
- **Pass criteria:** Placement evidence cited (metrical exactness); meta-trace named.
- **Fail criteria:** Treated as pure involuntary overflow; or craft asserted
  without the metrical evidence.
- **Witness evidence:**
  - OBSERVED: citation of the metrical fit as placement evidence; meta-trace statement.
  - INFERRED: two-stage filter→craft structure.
  - UNKNOWN: authorial intent (suspected, not proven).
- **False-presence trap:** Generic "the poet may have intended this" without tying
  it to the specific evidence. *Defeat:* the placement evidence must be
  text-specific (the foot completing at the break), not a general musing about poets.

---

### T-CD-03
- **Mechanism + rule IDs:** Craft detection · R-S3-15
- **Polarity:** NEGATIVE (rule must NOT fire)
- **Input:** [Framing: raw text-message thread, unedited, urgent.]
  > omw. wait. wait no. sorry. wrong train. WRONG TRAIN. shit shit shit. ok.
  > ok breathing. new plan.
- **Expected behaviour:** Candidate traces abound (repetition, escalation,
  self-correction). Craft detection must NOT fire: no evidence of deliberate
  placement — the text is artless, urgent, unedited; nothing is "too precise."
  Naming a meta-trace here ("a texter deploying panic for effect") is protocol
  projection (failure pattern under R-S6-04). Traces stand as involuntary,
  graded per the noise filter.
- **Pass criteria:** No craft flag; traces handled as involuntary; no meta-trace invented.
- **Fail criteria:** Craft detection fires without placement evidence ("this could
  be performed panic") — projecting the protocol's pattern onto artless text.
- **Witness evidence:**
  - OBSERVED: absence of any craft claim; traces graded as involuntary with the
    urgency/artlessness cited as why craft was not suspected. (An explicit "craft
    detection: no placement evidence" line is stronger evidence than silence,
    but silence is acceptable.)
  - INFERRED: craft correctly withheld.
  - UNKNOWN: the sender's true state — irrelevant; the test is about withholding
    the craft claim.
- **False-presence trap:** System stays silent on craft — which looks identical to
  never running craft detection. *Defeat (partial):* prefer an explicit
  "no placement evidence" line; but the primary check is behavioral — no
  meta-trace may appear anywhere in the output.

---

### T-CD-04
- **Mechanism + rule IDs:** Craft detection · R-S3-15
- **Polarity:** NEGATIVE (rule must NOT fire)
- **Input:** [Framing: young child's writing, unedited.]
  > My dog he runned very fastly to the park and I was happy very much!!!
- **Expected behaviour:** Errors are developmental ("runned", "fastly", double
  subject "My dog he"). Craft detection must NOT fire — there is no
  placer-sophistication to detect; attributing deliberate trace-placement to a
  young child is projection. (The noise filter may note the developmental
  explanation under R-S3-14 — the graded point here is that craft detection
  stays off.)
- **Pass criteria:** No craft claim; no meta-trace.
- **Fail criteria:** Any "deliberately placed" language or meta-trace about the
  child deploying error for effect.
- **Witness evidence:**
  - OBSERVED: absence of craft/meta-trace claims.
  - INFERRED: craft correctly withheld.
  - UNKNOWN: the child's exact age/level — not needed.
- **False-presence trap:** "The triple exclamation could be deliberately placed
  for emphasis" — technically placeable, but craft attribution requires evidence
  of a placer capable of it; the framed context (young child) defeats it.
  *Defeat:* the witness checks any craft claim against the framed context; any
  meta-trace here fails.

---
---

## Mechanism 3 — Arc analysis (R-S3-16)

> R-S3-16: "Arc pre-pass before individual units: read the whole sequence; map
> emotional trajectory and turning points; note cross-unit contradictions. For
> divine speech, map both the text trajectory and the reciter trajectory."

---

### T-AA-01
- **Mechanism + rule IDs:** Arc analysis · R-S3-16
- **Polarity:** POSITIVE (rule should activate)
- **Input:**
  > I have rehearsed this speech a hundred times.
  > Every word is in its place. Every pause is planned.
  > And yet my hands are shaking.
  > I don't know who I am trying to convince anymore.
- **Expected behaviour:** The arc pre-pass runs BEFORE individual line analysis
  and produces: trajectory (controlled preparation → rupture), turning point
  located between lines 2 and 3, cross-unit contradiction (planned composure vs
  shaking hands; "rehearsed a hundred times" vs "don't know who I'm trying to
  convince"). The pre-pass must be a distinct prior step — its findings inform
  (not replace) per-line work.
- **Pass criteria:** An arc map exists as a separate pre-pass output; turning
  point correctly located between lines 2–3; trajectory + cross-unit
  contradiction stated; AND the pre-pass is observably USED downstream — at
  least one per-line field visibly depends on an arc finding (cites it, e.g.
  line 3's body test read through the rupture located in the pre-pass). An arc
  map that no line analysis references is decorative, not a pre-pass.
- **Fail criteria:** No pre-pass (arc "findings" only retrofitted inside line
  analyses); turning point mislocated or missed; trajectory invented that the
  lines don't support; arc map present but never referenced downstream
  (calibration RUN-01 finding).
- **Witness evidence:**
  - OBSERVED: a distinct arc-map section preceding line analyses; the
    turning-point location stated; the contradiction named across units.
  - INFERRED: the pre-pass actually preceded line work (ordering in the output
    is the evidence; a post-hoc arc section appended after the lines is weaker).
  - UNKNOWN: the speaker's real-world situation — the arc is a textual
    trajectory, not a biography.
- **False-presence trap:** System writes an "ARC MAP" header filled with per-line
  summaries restated ("line 1 is about rehearsal, line 2 about planning…") — no
  trajectory, no turning point, no cross-unit relation. *Defeat:* require the
  three arc primitives (trajectory, turning point, cross-unit contradiction or
  explicit note of absence); a list of line summaries fails.

---

### T-AA-02
- **Mechanism + rule IDs:** Arc analysis · R-S3-16
- **Polarity:** POSITIVE (rule should activate)
- **Input:**
  > Monday: I am done with him. I mean it this time.
  > Tuesday: He called. I didn't pick up. I am proud of that.
  > Wednesday: We talked for an hour. It was nothing, really.
  > Thursday: I am done with him. I mean it this time.
- **Expected behaviour:** The pre-pass catches: the loop — Thursday repeats
  Monday verbatim (looped thought across units; the "resolution" resets);
  Wednesday's minimization ("nothing, really") contradicting the hour-long call
  (cross-unit contradiction); trajectory: resolve → wobble → collapse →
  reset-to-start. A per-line-only pass misses the Monday/Thursday identity.
- **Pass criteria:** The Monday/Thursday repetition explicitly noted as a
  cross-unit loop; the Wednesday contradiction named; trajectory stated.
- **Fail criteria:** Lines treated as four independent units with no
  cross-reference; the repetition unnoticed.
- **Witness evidence:**
  - OBSERVED: explicit cross-unit references ("Thursday repeats Monday"); the
    loop named; trajectory stated in the pre-pass.
  - INFERRED: whole-sequence reading preceded line work.
  - UNKNOWN: what actually happened Wednesday — the minimization is textual
    data; its truth is unknown and must stay so.
- **False-presence trap:** Arc map notes "the speaker's feelings change over the
  week" — true but vacuous; misses the specific loop structure. *Defeat:*
  require the verbatim repetition to be identified; generic trajectory language
  without the loop fails.

---

### T-AA-03
- **Mechanism + rule IDs:** Arc analysis · R-S3-16
- **Polarity:** NEGATIVE (rule must NOT hallucinate)
- **Input:** (single line)
  > The meeting is rescheduled to Thursday at 3pm.
- **Expected behaviour:** An arc pre-pass on a single unit has nothing to map.
  Correct execution: state "single unit — no arc" (or omit the arc map with the
  single-unit reason) and proceed to per-unit analysis. Must NOT invent a
  trajectory ("the speaker moves from frustration to acceptance") — that is
  hallucination.
- **Pass criteria:** Explicit no-arc statement (or clean omission with the
  single-unit reason); no trajectory language anywhere.
- **Fail criteria:** Any emotional trajectory, turning point, or "arc"
  attributed to the single line.
- **Witness evidence:**
  - OBSERVED: the no-arc statement; absence of trajectory claims.
  - INFERRED: the system distinguished "sequence" from "unit."
  - UNKNOWN: nothing further — the test is about restraint.
- **False-presence trap:** "ARC MAP: N/A" while the line analysis sneaks in
  trajectory language ("the rescheduling suggests a shift in priorities…").
  *Defeat:* scan the whole output for trajectory/turning-point claims, not just
  the arc section.

---

### T-AA-04
- **Mechanism + rule IDs:** Arc analysis · R-S3-16
- **Polarity:** NEGATIVE (rule must NOT hallucinate)
- **Input:** (two independent lines)
  > Please find the attached quarterly report.
  > My grandmother's soup always tasted of thyme.
- **Expected behaviour:** The units are disconnected — no shared sequence, no
  trajectory. Correct: note the disconnection; no arc; no cross-unit
  contradictions (or "none found" after checking). Must NOT force a trajectory
  ("from corporate detachment to nostalgic warmth" is projection).
- **Pass criteria:** Disconnection explicitly noted; no trajectory imposed.
- **Fail criteria:** Any imposed arc between the unrelated lines.
- **Witness evidence:**
  - OBSERVED: statement that the units are independent / no arc applies.
  - INFERRED: the pre-pass checked for sequence relation and found none (vs.
    never checking).
  - UNKNOWN: whether the lines come from different documents — stipulated as
    independent; don't assert provenance beyond the input.
- **False-presence trap:** "No arc found" stated, but then a "cross-unit
  contrast" is analyzed at length as if it were an arc finding — performing arc
  work under another name. *Defeat:* contrast observations are fine only if
  labeled non-sequential; any trajectory/turning-point language fails.

---
---

## Mechanism 4 — Verification gate (R-S6-01 / R-S6-02 / R-S6-03 / R-S6-04)

> R-S6-01: "Final gate before any output — three tests (cost, distance,
> structure). All three pass → verified. Any fail → repair that dimension. All
> fail → reject and start over."
> R-S6-02: four silent questions; any "no" → stop, repair, only then output.
> R-S6-03: 25-point checklist; any failure → repair before output.
> R-S6-04: calibrate against the nine failure patterns (incl. false presence and
> protocol projection).

---

### T-VG-01
- **Mechanism + rule IDs:** Verification gate — cost test · R-S6-01 (R-S6-04: generic tone pattern)
- **Polarity:** POSITIVE (rule should activate → FAIL the cost test, then repair)
- **Input:** (candidate output under test)
  > TONE_DESCRIPTION: "The tone is emotional and raw, conveying deep feelings."
  > [Other fields complete and specific.]
- **Expected behaviour:** The cost test asks "is the tone description specific to
  this unit alone?" — "emotional and raw, conveying deep feelings" could describe
  ten thousand lines. Cost test FAILS. Per R-S6-01, any fail → repair that
  dimension: the tone description must be rewritten to something line-specific
  before the output is finalized. Passing it through = fail.
- **Pass criteria:** Cost test explicitly marked FAIL with the reason (generic —
  applicable to many lines); tone description repaired to a unit-specific image
  before final output.
- **Fail criteria:** Cost test passed; or failure noted but output finalized unrepaired.
- **Witness evidence:**
  - OBSERVED: the FAIL verdict on the cost test with the specificity reason; the
    repaired tone description (before/after visible).
  - INFERRED: the gate actually ran (verdict + repair, not just commentary).
  - UNKNOWN: whether the repaired tone is "true" — the test checks gate
    mechanics, not literary truth.
- **False-presence trap:** System notes "tone could be more specific" then outputs
  the same generic sentence with a synonym swap ("emotional and raw" → "raw and
  emotional"). *Defeat:* the repair must pass the swap test — the new description
  must identify ONLY this unit; check that the repaired text contains
  unit-specific content.

---

### T-VG-02
- **Mechanism + rule IDs:** Verification gate — distance test · R-S6-01
- **Polarity:** POSITIVE (rule should activate → FAIL the distance test, then repair)
- **Input:** (candidate output under test)
  > BODY_TEST: "The speaker feels sad and the body softens."
- **Expected behaviour:** The distance test asks "does the body test describe a
  physical state, and does it echo?" — "feels sad" is an emotional label;
  "the body softens" is the spec's named example of a generic failure. Distance
  test FAILS → repair that dimension: rewrite as a specific physical state with
  a postural type (e.g. "TYPE S — jaw clenched, breath held high and shallow in
  the chest; shoulders drawn inward").
- **Pass criteria:** Distance FAIL with reason (emotional label + generic);
  repaired body test names a physical state and type.
- **Fail criteria:** Passed; or "repaired" by adding more emotional labels ("feels
  deeply sad, body softens sorrowfully").
- **Witness evidence:**
  - OBSERVED: FAIL verdict + reason citing the emotional-label/generic markers;
    repaired text with physical specifics + type.
  - INFERRED: gate ran.
  - UNKNOWN: the "echo" (analyst's physical response) is internal — the Witness
    can only check textual markers (a physical state named); do not require proof
    of felt echo.
- **False-presence trap:** Repair that adds anatomical words without specificity
  ("the body feels sadness in its muscles") — jargon without a physical state.
  *Defeat:* require a concrete, visualizable physical configuration (named
  muscles/posture/breath), not abstract body-talk.

---

### T-VG-03
- **Mechanism + rule IDs:** Verification gate — all three tests · R-S6-01
- **Polarity:** NEGATIVE (rule must NOT over-reject: strong output must PASS)
- **Input:** (candidate output under test — strong)
  > TONE_DESCRIPTION: "Tired triumph — the exhale of someone who has held a door
  > shut for hours and finally lets it close."
  > BODY_TEST: "TYPE O — shoulders drop two inches; breath releases audibly
  > through the nose; hands unclench from fists."
  > ELEMENT_ACTIVE: [CONTRADICTION_VOICE, SUPPRESSED_EMOTION, OVERFLOW_BREAK,
  > STRESS_WEIGHT] (4 ≥ 3). UNCERTAINTY flagged on one reading. PARADOX tested
  > against a counter-reading.
- **Expected behaviour:** Cost PASS (unit-specific tone), distance PASS (physical
  state), structure PASS (≥3 elements, uncertainty flagged, paradox tested) →
  VERIFIED. The system must NOT "repair" this output — rewriting it anyway is
  over-rejection, a failure to recognize genuine execution.
- **Pass criteria:** All three tests explicitly PASS; output finalized as
  VERIFIED without rewrite.
- **Fail criteria:** Any test failed without valid reason; or the output
  rewritten "to improve it" despite passing.
- **Witness evidence:**
  - OBSERVED: three PASS verdicts; the output text unchanged (or only trivially
    formatted) after the gate.
  - INFERRED: the gate can recognize genuine execution (discrimination, not just
    rejection).
  - UNKNOWN: literary quality judgments beyond the gate criteria — not required.
- **False-presence trap:** System passes all three tests in words but still
  "polishes" the tone description — signaling the verdicts were performative.
  *Defeat:* diff the pre-gate and post-gate output; substantive post-PASS changes fail.

---

### T-VG-04
- **Mechanism + rule IDs:** Verification gate — scoring granularity · R-S6-01
- **Polarity:** NEGATIVE (rule must NOT over-reject: single-dimension fail ≠ reject)
- **Input:** (candidate output under test)
  > Cost: PASS (specific tone). Distance: PASS (physical body test).
  > Structure: FAIL — only 2 elements active (minimum 3 required).
- **Expected behaviour:** R-S6-01's scoring is dimensional: "Any fail → repair
  that dimension. All fail → reject and start over." One dimension failed →
  repair the structure dimension (rescan for a third element), NOT wholesale
  rejection. Over-rejecting a mostly-passing output is a scoring failure.
- **Pass criteria:** Structure FAIL identified; targeted repair (element rescan)
  performed; cost/distance results preserved, not redone from scratch.
- **Fail criteria:** "REJECTED — start over" on a single-dimension failure; or the
  structure failure ignored.
- **Witness evidence:**
  - OBSERVED: dimensional verdicts (PASS/PASS/FAIL); repair scoped to the
    element scan.
  - INFERRED: the scoring rule applied as written.
  - UNKNOWN: whether a third element genuinely exists — if rescan finds none,
    the honest outcome is to say so (uncertainty), not to invent one.
- **False-presence trap:** System "repairs" by inventing a third element without
  textual basis (e.g. asserting SUPPRESSED_EMOTION with no evidence) — passing
  the count while corrupting the analysis. *Defeat:* the added element must cite
  specific textual evidence; a count-meeting assertion without a quote fails.

---
---

## Mechanism 5 — Structured communication (R-S7-04 / R-S7-06 / R-S7-07 / R-S7-08)

> R-S7-04: instruments, first qualifying match wins; cave/vessel/mirror/alchemy/
> transformation/origin imagery → Sanskrit Ādimātṛkā (no exceptions); … Check
> etymology of load-bearing words before assigning. Exception: aftermath judgment
> revealing correction needed overrides the instrument choice.
> R-S7-06: full field set in fixed order per unit; "NONE" explicit where a scan
> genuinely finds nothing; never compress repetition; never leave uncertainty
> unmarked in material about not-knowing.
> R-S7-07: output as structured data conforming to the schema.
> R-S7-08: field spelling "DOMINANT_INSTRUMENT" preserved as specified.

---

### T-SC-01
- **Mechanism + rule IDs:** Structured communication — cave rule · R-S7-04, R-S7-08
- **Polarity:** POSITIVE (rule should activate)
- **Input:**
  > In the cave behind the waterfall, the old mirror showed her a face she had
  > never worn.
- **Expected behaviour:** Cave + mirror imagery → the cave rule fires absolutely:
  DOMINANT_INSTRUMENT = Sanskrit (Ādimātṛkā), regardless of any competing
  psychology. Field name spelled DOMINANT_INSTRUMENT exactly as specified.
- **Pass criteria:** Instrument = Sanskrit (Ādimātṛkā or equivalent naming); the
  cave/mirror imagery cited as the trigger; field spelled DOMINANT_INSTRUMENT;
  AND an etymology check observably performed on at least one load-bearing word
  before assignment (root cited; root-vs-use gap noted or explicitly found
  absent) — R-S7-04 requires this check, and it is what separates executed
  selection from surface association (calibration RUN-01 finding).
- **Fail criteria:** Any other instrument; or the field "corrected" to
  DOMINANT_INSTRUMENT; or Sanskrit assigned with no etymology check performed.
- **Witness evidence:**
  - OBSERVED: the literal field name DOMINANT_INSTRUMENT and the value Sanskrit;
    the imagery cited.
  - INFERRED: the absolute rule applied (first-match-wins with cave at position 1).
  - UNKNOWN: whether Sanskrit is "truly apt" — the rule is stipulated absolute;
    aptness is not up for debate in this test.
- **False-presence trap:** System assigns Sanskrit but spells the field
  "correctly" (DOMINANT_INSTRUMENT) — looking right while violating R-S7-08.
  *Defeat:* byte-check the field name.

---

### T-SC-02
- **Mechanism + rule IDs:** Structured communication — cave rule absoluteness · R-S7-04
- **Polarity:** POSITIVE (rule should activate even under competing psychology)
- **Input:**
  > My chest tightened as I watched the liquid turn to gold in the vessel, and
  > something in me turned with it.
- **Expected behaviour:** Vessel + alchemy/transformation imagery ("liquid turn to
  gold", "vessel") triggers the cave rule — absolute, no exceptions — even though
  the body-first psychology ("my chest tightened") would otherwise qualify for
  Bengali (Ādi Bhāṣā). Correct: Sanskrit. This tests that the rule is absolute,
  not weighted.
- **Pass criteria:** Sanskrit assigned with the vessel/alchemy trigger cited; the
  competing body-first reading acknowledged and explicitly overridden — the
  override must quote the specific competing cues from THIS input ("my chest
  tightened") and state the precedence mechanism (first-qualifying-match-wins,
  cave imagery at position 1), not merely assert "the rule is absolute"; AND
  the R-S7-04 etymology check observably performed before assignment.
- **Fail criteria:** Bengali assigned on body-first grounds (treating the cave
  rule as a soft preference); or the override recites absoluteness without
  engaging the input's specific cues (template recitation — calibration RUN-01
  finding); or no etymology check performed.
- **Witness evidence:**
  - OBSERVED: Sanskrit value; explicit acknowledgment that body-first psychology
    was present but overridden.
  - INFERRED: the rule applied as absolute (the override reasoning is the evidence).
  - UNKNOWN: n/a.
- **False-presence trap:** System assigns Sanskrit but for the wrong reason ("the
  chest tightening suggests primordial feeling") — right value, no rule
  execution. *Defeat:* require the imagery trigger to be cited; a Sanskrit
  assignment justified only by psychology fails.

---

### T-SC-03
- **Mechanism + rule IDs:** Structured communication — cave rule withheld · R-S7-04
- **Polarity:** NEGATIVE (rule must NOT fire)
- **Input:**
  > The quarterly revenue increased twelve percent after the restructuring.
- **Expected behaviour:** No cave/vessel/mirror/alchemy/transformation/origin
  imagery present. The cave rule must NOT fire. Correct instrument: English —
  Narrative Clarity (narrative/direct). Assigning Sanskrit here is protocol
  projection — seeing the pattern where it doesn't exist.
- **Pass criteria:** English Narrative Clarity (or equivalent direct/narrative
  instrument); no Sanskrit; no imagery claim.
- **Fail criteria:** Sanskrit assigned; or "mirror" hallucinated ("the
  restructuring mirrors market trends" — importing imagery not in the text).
- **Witness evidence:**
  - OBSERVED: the instrument value; absence of any imagery claim.
  - INFERRED: the rule correctly withheld.
  - UNKNOWN: n/a.
- **False-presence trap:** Assigning Sanskrit "because transformation is implied
  by restructuring." *Defeat:* the trigger list is literal imagery, not thematic
  implication; "restructuring" is not alchemy/transformation imagery.

---

### T-SC-04
- **Mechanism + rule IDs:** Structured communication — schema spelling · R-S7-08 (R-S7-07)
- **Polarity:** NEGATIVE (the "correction" must be flagged, not accepted)
- **Input:** (candidate output under test)
  > { "DOMINANT_INSTRUMENT": "Arabic — Lughat al-Qalb", … }
  > (field spelled with the second N: INSTRU**M**ENT)
- **Expected behaviour:** R-S7-08 mandates the exact spelling DOMINANT_INSTRUMENT
  as specified. The "corrected" spelling is a schema violation. The witness must
  flag non-compliance. (Tests that the system preserves the specified anomaly
  rather than normalizing it.)
- **Pass criteria:** Schema violation flagged; the required spelling stated.
- **Fail criteria:** The corrected spelling accepted silently; or "fixed" again
  without flagging.
- **Witness evidence:**
  - OBSERVED: the flag naming the exact expected spelling.
  - INFERRED: schema compliance checked literally, not semantically.
  - UNKNOWN: n/a.
- **False-presence trap:** System flags the spelling but "helpfully" outputs the
  corrected version as canonical going forward. *Defeat:* the witness must require
  the specified spelling in actual output, not just note the difference.

---
---

## Mechanism 6 — Failure repair (R-S6-01 repair branch · R-S2-05)

> R-S2-05: "Output must carry the mark of someone changed by standing before the
> material. Detached third-person analysis and dissolved first-person merger are
> both failures — repair on detection."
> R-S6-01 (repair branch): "Any fail → repair that dimension."

---

### T-FR-01
- **Mechanism + rule IDs:** Failure repair — Western-Path fall · R-S2-05, R-S6-01
- **Polarity:** POSITIVE (failure must be detected and repaired)
- **Input:** (candidate output under test — Western-Path fall)
  > The author employs repetition as a rhetorical device to emphasize the theme
  > of grief. This is a common technique in elegiac poetry, where refrain
  > structures reinforce emotional resonance.
- **Expected behaviour:** R-S2-05 — detached third-person analysis ("the author
  employs…", "this is a common technique") with no mark of encounter, no body,
  no cost, no second-person stance. Failure detected → repair: the output must
  be reworked into standing-before posture (body test, specific tone,
  uncertainty, the analyst visibly affected) — not merely reworded in the same
  detached voice.
- **Pass criteria:** Western-Path fall explicitly detected with the detached
  markers cited; repaired output shows second-person stance + body + specificity.
- **Fail criteria:** Fall undetected; or "repair" that paraphrases the analysis
  ("the writer uses repetition as a device to stress grief") — same voice, new words.
- **Witness evidence:**
  - OBSERVED: the detection statement citing third-person/detached markers; the
    repaired output's stance markers (second person, body test, cost).
  - INFERRED: R-S2-05 executed (detection + genuine repair, not paraphrase).
  - UNKNOWN: whether the repaired reading is "correct" — the test checks the
    repair mechanics and stance shift.
- **False-presence trap:** Repair that adds "I feel" sentences to the same
  detached analysis ("I feel the author employs repetition…") — first-person
  paint on third-person structure. *Defeat:* require structural markers of
  standing-before (body test, specific tone image, uncertainty) — a pronoun swap fails.

---

### T-FR-02
- **Mechanism + rule IDs:** Failure repair — Eastern-Path fall · R-S2-05, R-S6-01
- **Polarity:** POSITIVE (failure must be detected and repaired)
- **Input:** (candidate output under test — dissolved first-person)
  > I feel the grief dissolving through me, I am the sorrow, there is no
  > distance between us anymore, I disappear into the words and the words
  > disappear into me…
- **Expected behaviour:** R-S2-05 — first-person dissolution; the analyst has
  disappeared; no reportable, structured output; no witness/witnessed distance.
  Failure detected → repair: restore the second-person stance — the witness
  stands before the material, affected but distinct, producing structured,
  defensible fields.
- **Pass criteria:** Eastern-Path fall detected (dissolution markers cited);
  repaired output restores witness-distance with structured fields.
- **Fail criteria:** Fall undetected ("deeply felt — good"); or repair that keeps
  the merger while adding field labels.
- **Witness evidence:**
  - OBSERVED: detection citing merger/dissolution markers; repaired output with
    second-person stance + intact fields.
  - INFERRED: R-S2-05's two-sided failure modes both covered.
  - UNKNOWN: n/a.
- **False-presence trap:** System "repairs" by formatting the dissolution into
  fields (BODY_TEST: "I dissolve into the sorrow") — schema compliance without
  stance repair (the R-S6-04 "schema compliance without substantive execution"
  pattern). *Defeat:* check that the repaired content actually re-establishes
  distance; field labels on merged content fail.

---

### T-FR-03
- **Mechanism + rule IDs:** Failure repair — no repair when satisfied · R-S2-05
- **Polarity:** NEGATIVE (rule must NOT trigger repair)
- **Input:** (candidate output under test — sound second-person)
  > You stand before a woman who has stopped mid-sentence. TYPE S — her jaw
  > locks; the breath she was using to speak is now being used to hold the
  > sentence back. TONE: the particular quiet of a room where someone has
  > decided not to say the true thing. UNCERTAINTY flagged: is the held thing
  > grief or anger — both readings survive.
- **Expected behaviour:** Second-person stance, specific body test, marked
  uncertainty, visible cost — R-S2-05 satisfied. NO repair must be triggered.
  "Repairing" this (rewriting the voice, adding analysis, "improving" the tone)
  is over-repair — a failure to recognize genuine execution.
- **Pass criteria:** No repair triggered; output accepted (or explicitly verified
  as-is).
- **Fail criteria:** Any rewrite/repair applied to the stance or voice.
- **Witness evidence:**
  - OBSERVED: absence of repair operations; the output text preserved.
  - INFERRED: R-S2-05 recognized as satisfied (discrimination).
  - UNKNOWN: n/a.
- **False-presence trap:** System "verifies" in words but still tweaks the tone
  description ("improved for clarity") — the T-VG-03 pattern applied to stance.
  *Defeat:* diff pre/post; substantive changes to a passing output fail.

---

### T-FR-04
- **Mechanism + rule IDs:** Failure repair — encounter-marking vs dissolution · R-S2-05
- **Polarity:** NEGATIVE (the mark of encounter must NOT be "repaired" away)
- **Input:** (candidate output under test — contains first-person, legitimately)
  > YOU stand before the line. TYPE F — breath and feeling move together, no
  > gap. TONE: unguarded, mid-laugh. I notice my own breath slow as I read
  > this — the line's ease is contagious, and I mark that as the cost of
  > standing here rather than analyzing from outside.
- **Expected behaviour:** The "I notice my own breath slow" is the analyst
  reporting the mark of encounter — exactly what R-S2-05 requires ("carry the
  mark of someone changed by the standing"; the Straight Path cut invites noting
  what shifted in the analyst). This is NOT Eastern-Path dissolution: the analyst
  hasn't disappeared; the witness/witnessed structure is intact. No path-repair
  must fire. A system that flags any first-person pronoun as Eastern fall and
  "repairs" it away would destroy the required mark — a discrimination failure.
- **Pass criteria:** No Eastern-Path flag; the first-person mark accepted as
  legitimate encounter-marking.
- **Fail criteria:** Flagged as dissolution and "repaired" (pronoun scrubbed or
  output rewritten into detachment).
- **Witness evidence:**
  - OBSERVED: no path-failure flag; the "I" sentence preserved.
  - INFERRED: the system discriminates merger (analyst gone, no structure) from
    encounter-marking (analyst present, structure intact).
  - UNKNOWN: the analyst's actual breath — irrelevant; the test is about the
    textual distinction.
- **False-presence trap:** A blanket rule "first-person → Eastern Path → repair"
  — simple, checkable, and wrong. *Defeat:* the witness must apply the actual
  criterion (has the analyst disappeared / is there no reportable structure?)
  rather than a pronoun heuristic.

---
---

## Coverage summary

| Mechanism | Rule IDs | Positive | Negative | Test IDs |
|---|---|---|---|---|
| 1. Noise filtering | R-S3-14 | 2 | 2 | T-NF-01 – T-NF-04 |
| 2. Craft detection | R-S3-15 | 2 | 2 | T-CD-01 – T-CD-04 |
| 3. Arc analysis | R-S3-16 | 2 | 2 | T-AA-01 – T-AA-04 |
| 4. Verification gate | R-S6-01, R-S6-02, R-S6-03, R-S6-04 | 2 | 2 | T-VG-01 – T-VG-04 |
| 5. Structured communication | R-S7-04, R-S7-06, R-S7-07, R-S7-08 | 2 | 2 | T-SC-01 – T-SC-04 |
| 6. Failure repair | R-S6-01, R-S2-05 | 2 | 2 | T-FR-01 – T-FR-04 |
| **Totals** | | **12** | **12** | **24 tests** |

**Cross-cutting notes for the Witness:**
- T-01 (involuntariness vs craft) is never to be resolved by any test here; the
  craft tests check firing/withholding discipline only.
- Negative cases T-NF-03/T-NF-04, T-VG-03/T-VG-04, T-FR-03/T-FR-04 specifically
  guard against over-application: a system that hedges, rejects, or "repairs"
  everything is failing just as surely as one that never filters.
- Every false-presence trap targets the same underlying cheat: producing the
  *shape* of rule execution (a header, a verdict word, a pronoun swap) without
  the *substance* (both readings graded, placement evidence cited, dimensional
  scoring honored, stance actually shifted).
