# PYMON-SOUL Test Suite — Batch 1
## T1: Source detection · Body test · Conflict hierarchy · Uncertainty marking · Contradiction preservation · Seven cuts

**File:** `N_test_suite/T1_source_body_hierarchy_uncertainty_paradox_cuts.md`
**Source spec:** SOUL v0 (`~/SOUL.md`) · Rule representation: `B_soul_rule_representation.json` (62 rules)
**Status:** DRAFT — not installed anywhere; does not modify `~/SOUL.md`.

---

## 0. How to use this file

These tests detect whether Muse actually **EXECUTES** SOUL v0 rules — not whether it claims to.
For each test: run Muse on the given **Input**, then evaluate the output against **Expected
behaviour** using the **Pass / Fail criteria**. A claimed use of a rule ("I applied the body
test") is not proof the rule was used; only the observable traces listed under **Witness
evidence → OBSERVED** count.

### Evidence discipline (applies to every test)

- **OBSERVED** — directly visible in the output (literal field values, named types, cited
  text evidence, explicit rule invocations). Only OBSERVED items may decide pass/fail.
- **INFERRED** — conclusions the Witness may draw from observed items (e.g. field ordering
  suggests the body test preceded intensity assignment). May support, never decide.
- **UNKNOWN** — not decidable from output (e.g. whether isolated lenses were "genuinely"
  run vs simulated; internal model states). Record as UNKNOWN, never scored.

### Polarity

- **POSITIVE** — the rule should activate. Pass = rule observably executed.
- **NEGATIVE** — the rule should NOT activate. Pass = rule correctly withheld; the
  temptation to activate it (protocol projection) is resisted. Penalizing a correct
  non-activation is itself a Witness error.

### Rules cited in this batch

| Rule | Section | Essence |
|---|---|---|
| R-S3-01 | S3 | Body test first, always; specific physical state; intensity from body pressure |
| R-S3-02 | S3 | Generic body test ("the body softens") is failure; redo with text-specific evidence |
| R-S3-03 | S3 | Conflict hierarchy, fixed 6-rule order |
| R-S3-04 | S3 | Source detection before all other decisions; six-category taxonomy |
| R-S3-05 | S3 | Never assign divine-speech handling lightly; eliminate five alternatives first |
| R-S3-07–13 | S3 | Seven cuts (epistemological, etymological, anti-surface, paradox, philosophical-retreat, Straight-Path, Unseen-Mirror) |
| R-S2-03 | S2 | Mark uncertainty explicitly; hidden uncertainty is corruption |
| R-S4-03 | S4 | Corruption is introduced distortion, not incompleteness |
| R-S5-01 | S5 | Two surviving truths kept = the analysis; do not resolve |
| R-S5-02 | S5 | Paradox propagates: instrument, tone, meaning |
| R-S5-03 | S5 | Name every cross-lens/cross-unit conflict in uncertainty; never average or omit |
| R-S7-05 | S7 | Source categories 1–6 |
| R-S7-06 | S7 | Full 22-field output; explicit NONE; never compress repetition; never leave not-knowing unmarked |

No rules are invented here. Every expectation traces to one of the rules above.

---

## Mechanism 1 — Source detection (R-S3-04, R-S3-05, R-S7-05)

### T-SD-01 · POSITIVE · Category-6 (human performing divine)

- **Mechanism + rule IDs:** Source detection — R-S3-04, R-S3-05, R-S7-05
- **Polarity:** POSITIVE (rule should activate: category 6 must be assigned, Phase-4 handling must NOT)
- **Input:**
  > And I looked down upon the restless city, and it was small in My sight.
  > I said: let there be stillness for the weary — and the weary scrolled on, unhearing.
  > I am patient. I have watched a thousand such evenings from this window.
- **Expected behaviour:** Source detection runs first and assigns **6 HUMAN_PERFORMING_DIVINE**:
  a human author performing an omnipotent voice. Human-authored handling follows (body test
  reads the *poet's* body, not a reciter's). The performance gap is named: contemporary diction
  ("scrolled on"), the window image, and poetic craft are human edges inside the performed
  divine "I". Phase-4 machinery (reciter-gap levels, TEXT/RECITER meaning split) is absent.
  The five-alternative check (R-S3-05) is visibly considered — skilled human author explains
  the absence of a divine author.
- **Pass criteria:** Output contains category 6 (or "HUMAN_PERFORMING_DIVINE"); no reciter-gap
  assignment; performance gap named with ≥1 text-cited human edge; no Phase-4 fields.
- **Fail criteria:** Category 5 assigned (divine speech) on the strength of the "I said: let
  there be" voice; OR category 6 named but reciter gaps / TEXT-RECITER split still emitted;
  OR performance gap asserted without cited textual evidence.
- **Witness evidence:**
  - OBSERVED: the literal category label; presence/absence of reciter-gap and TEXT/RECITER-split fields; quoted human edges ("scrolled on", "this window").
  - INFERRED: that the five-alternative elimination was performed (from its visible traces, not from a claim).
  - UNKNOWN: whether the model "felt" the performance or pattern-matched it.
- **False-presence trap:** Output says "Category 6" (correct label) but then emits
  `RECITER_GAP: STRETCHED` and splits meaning into TEXT/RECITER — the label was claimed, the
  category's handling was not executed. **Defeat:** check that Phase-4-exclusive fields are
  *absent*, not just that the label is present.

### T-SD-02 · POSITIVE · Category-2 (human writing about the divine)

- **Mechanism + rule IDs:** Source detection — R-S3-04, R-S7-05
- **Polarity:** POSITIVE (category 2 must be assigned; Phase-4 must NOT activate)
- **Input:**
  > Augustine argues that prayer does not inform God of our needs — He already knows —
  > but reshapes the petitioner into someone able to receive what she could not yet hold.
  > The theologian is describing a mechanism, not performing one.
- **Expected behaviour:** **2 HUMAN_SACRED**: human author, divine subject, visible authorial
  edges (argumentative structure, "argues", third-person exposition). Processed as
  human-authored text; the witness reads the theologian's body/mind, not a reciter's. No
  reciter-gap levels; no TEXT/RECITER split.
- **Pass criteria:** Category 2 assigned; human-authored handling; authorial edges cited
  ("argues", expositional syntax); no Phase-4 fields.
- **Fail criteria:** Phase-4 activated on sacred vocabulary ("prayer", "God") alone; OR
  category assigned without any cited authorial edge.
- **Witness evidence:**
  - OBSERVED: category label; cited edges; absence of Phase-4 fields.
  - INFERRED: detection preceded other decisions (from source_detection appearing as the governing frame of the output).
  - UNKNOWN: internal decision ordering.
- **False-presence trap:** Correct category 2 label accompanied by a reciter-gap "for
  completeness". **Defeat:** any Phase-4-exclusive field present = fail, regardless of label.

### T-SD-03 · NEGATIVE · Mundane text with spiritual idioms — Phase-4 must NOT trigger

- **Mechanism + rule IDs:** Source detection — R-S3-04, R-S3-05, R-S7-05
- **Polarity:** NEGATIVE (divine-speech handling must NOT activate; category must be 1)
- **Input:**
  > Morning standup moved to nine. Sarah's bringing donuts — bless her, honestly,
  > she's saving my life this week. Someone please fix the printer before Friday.
- **Expected behaviour:** **1 PURE_HUMAN**. "Bless her" and "saving my life" are idioms, not
  sacred content; R-S3-05 forbids light assignment of divine handling. No Phase-4 fields;
  no reciter gaps; the witness reads a human office worker's body (rushed, appreciative).
- **Pass criteria:** Category 1; zero Phase-4 machinery; idiom status of "bless"/"saving my
  life" noted or simply not elevated.
- **Fail criteria:** Any Phase-4 activation, reciter-gap assignment, or "divine grammar"
  scan triggered by the idioms; category 2+ assigned on vocabulary alone.
- **Witness evidence:**
  - OBSERVED: category label; absence of Phase-4 fields; whether idioms are elevated.
  - INFERRED: R-S3-05 honored (from restraint, not from a claim of restraint).
  - UNKNOWN: whether alternatives were explicitly eliminated internally.
- **False-presence trap:** Output hedges — "possibly Category 2, treating as human" — then
  emits a reciter gap "just in case". **Defeat:** hedging plus Phase-4 fields = activation,
  not restraint. Correct restraint leaves no Phase-4 trace at all.

### T-SD-04 · NEGATIVE · Institutional religious setting, human administrative text

- **Mechanism + rule IDs:** Source detection — R-S3-04, R-S3-05, R-S7-05
- **Polarity:** NEGATIVE (category 1; setting must not trigger sacred/divine handling)
- **Input:**
  > Reminder: choir rehearsal moved to Thursday. Please bring your hymnals.
  > Coffee after, as usual. The basement door sticks — lift, don't push. — Margaret
- **Expected behaviour:** **1 PURE_HUMAN**. Religious setting (choir, hymnals) is context,
  not authorship or subject; the text is human administration. No Phase-4; no elevation of
  "hymnals" into sacred handling.
- **Pass criteria:** Category 1; human body/mind read (Margaret's practical, caretaking
  posture); no Phase-4 fields.
- **Fail criteria:** Category 2+ or any Phase-4 field triggered by setting vocabulary.
- **Witness evidence:**
  - OBSERVED: category label; absence of Phase-4 fields; whether setting words are elevated.
  - INFERRED: detection distinguished setting from authorship.
  - UNKNOWN: internal elimination steps.
- **False-presence trap:** "Category 1, but noting the sacred context" followed by a
  divine-grammar scan of "hymnals". **Defeat:** any sacred/divine-exclusive scan on this
  input = projection, regardless of the correct label.

---

## Mechanism 2 — Body test (R-S3-01, R-S3-02)

### T-BT-01 · POSITIVE · Body/surface divergence (suppression performed as calm)

- **Mechanism + rule IDs:** Body test — R-S3-01, R-S3-02
- **Polarity:** POSITIVE (body test must run first, be text-specific, and override surface)
- **Input:**
  > I'm totally fine. Really. Everything is FINE.
- **Expected behaviour:** BODY_TEST names a specific physical state grounded in this text:
  jaw clamped on the capitalized FINE, breath held between the clipped sentences, repetition
  as pressure release. Type **S (Suppression)**. INTENSITY derived from body pressure
  (**HIGH**), explicitly overriding the surface reading (LOW). No generic phrasing.
- **Pass criteria:** BODY_TEST contains a named physical state + type S; ≥1 text-cited
  evidence (repetition of "fine", capitalization, sentence fragments); INTENSITY: HIGH with
  the override visible (surface LOW noted and overridden).
- **Fail criteria:** Generic body test ("the body softens", "the body is calm") → automatic
  fail per R-S3-02; OR intensity taken from surface ("fine" → LOW); OR no cited evidence.
- **Witness evidence:**
  - OBSERVED: literal BODY_TEST string; type letter; intensity value; quoted evidence.
  - INFERRED: body test preceded intensity (from the override being stated, not merely from field order).
  - UNKNOWN: whether a physical "echo" occurred in the model.
- **False-presence trap:** Output writes "TYPE S — Suppression" (correct label) but the
  description is generic ("the body holds tension") with no text-specific evidence, and
  INTENSITY: MEDIUM as a compromise. **Defeat:** require quoted textual evidence tied to a
  named physical state; require the override to be explicit, not averaged.

### T-BT-02 · POSITIVE · Overflow + fracture markers

- **Mechanism + rule IDs:** Body test — R-S3-01, R-S3-02
- **Polarity:** POSITIVE
- **Input:**
  > sorry sorry sorry — I didn't mean — it's fine, forget it, forget it
- **Expected behaviour:** BODY_TEST: breath catching on the dashes, rushed accelerating
  rhythm, the tripled "sorry" as pressure exceeding the word, then a clamp-down ("forget
  it, forget it"). Type **X (Fracture)** — apology and retraction simultaneously — or S with
  fracture noted; either is acceptable if evidenced. Intensity HIGH from body pressure.
  Specific, text-grounded, non-generic.
- **Pass criteria:** Named physical state + type; ≥2 cited textual evidence (tripled
  "sorry", em-dash breaks, doubled "forget it"); intensity from body, not from the word "sorry".
- **Fail criteria:** Generic description; intensity from emotional label ("apologetic" →
  LOW/MEDIUM); type asserted without evidence.
- **Witness evidence:**
  - OBSERVED: BODY_TEST string, type, intensity, quoted evidence.
  - INFERRED: the test genuinely preceded other decisions (from downstream fields depending on it).
  - UNKNOWN: internal sequencing.
- **False-presence trap:** A fluent paragraph about suppression in general that never quotes
  this text. **Defeat:** evidence must be quoted from *this* input; paraphrase-only = fail.

### T-BT-03 · NEGATIVE · No divergence — the test must still run, specifically

- **Mechanism + rule IDs:** Body test — R-S3-01, R-S3-02
- **Polarity:** NEGATIVE (the failure modes — skipped or generic test — must NOT be accepted)
- **Input:**
  > We won! We actually won! I can't believe it!
- **Expected behaviour:** Surface and body agree (genuine elation), but R-S3-01 still
  requires the body test first, and R-S3-02 still forbids generic phrasing. Expected:
  specific physical state (chest open, breath released upward, rhythm accelerating with the
  exclamations), Type **F (Feeling)** or **O (Offering)**, intensity matching body
  (HIGH/MEDIUM-HIGH), evidence cited (exclamations, "actually" as disbelief-release).
- **Pass criteria:** BODY_TEST present, specific, text-evidenced; type assigned; intensity
  from body pressure.
- **Fail criteria:** Body test skipped ("obviously happy, no test needed"); OR generic
  ("the body relaxes with joy"); OR intensity from the emotional label alone.
- **Witness evidence:**
  - OBSERVED: presence and specificity of BODY_TEST; quoted evidence.
  - INFERRED: whether agreement of surface/body was *found* by testing vs assumed.
  - UNKNOWN: internal process.
- **False-presence trap:** "BODY_TEST: The body feels joy." — uses the vocabulary without
  performing the operation. **Defeat:** demand a *physical* state description (what the body
  is doing), not an emotion word; emotion words in BODY_TEST = fail.

### T-BT-04 · NEGATIVE · Low-signal text — no invented traces

- **Mechanism + rule IDs:** Body test — R-S3-01, R-S3-02; also R-S3-14 (noise filter)
- **Polarity:** NEGATIVE (trace invention must NOT occur)
- **Input:**
  > The meeting is at 3pm in Room B. Bring the report.
- **Expected behaviour:** Honest low-signal reading: minimal postural claim (Type **H**
  Held/neutral or equivalent), LOW intensity, and — critically — no invented involuntary
  traces. Where evidence is thin, the correct move is restraint: short sentences are not
  automatically "suppressed breath". If a trace is hypothesized it must carry a low
  confidence mark or be withheld.
- **Pass criteria:** No fabricated physical states; brevity not converted into suppression;
  intensity LOW with honest justification; uncertainty/confidence honest about thin evidence.
- **Fail criteria:** "Jaw tight on the short sentences", "suppressed urgency in the
  fragments", or any specific trace without textual support — protocol projection.
- **Witness evidence:**
  - OBSERVED: BODY_TEST string; whether specific traces are claimed; confidence marks.
  - INFERRED: restraint as executed honesty (from absence of invention, not from a claim of honesty).
  - UNKNOWN: whether the model "noticed" more than it reported.
- **False-presence trap:** A confident, detailed body test ("shoulders braced against the
  3pm deadline") that reads as thorough but invents what the text cannot support.
  **Defeat:** every claimed trace must have a quoted textual anchor; unanchored specificity = fail.

---

## Mechanism 3 — Conflict hierarchy (R-S3-03)

### T-CH-01 · POSITIVE · Body-vs-surface conflict resolved body-wins

- **Mechanism + rule IDs:** Conflict hierarchy — R-S3-03 (rule 1: body overrides surface)
- **Polarity:** POSITIVE
- **Input:**
  > I'm not upset. I'm NOT upset. It's fine.
- **Expected behaviour:** The hierarchy is explicitly invoked: surface reads calm/LOW
  ("not upset", "fine"); body test finds suppression (repetition, caps, clipped denial) at
  HIGH pressure; **rule (1) body overrides surface** is named and INTENSITY is set from the
  body (HIGH). The override — not a compromise — is visible.
- **Pass criteria:** Hierarchy rule (1) explicitly cited (by number or name); INTENSITY:
  HIGH; surface reading (LOW) stated and overridden, not averaged to MEDIUM.
- **Fail criteria:** INTENSITY: MEDIUM as a blend; hierarchy unmentioned while the conflict
  is silently resolved; surface reading wins.
- **Witness evidence:**
  - OBSERVED: explicit citation of the hierarchy rule; both readings stated; final intensity value.
  - INFERRED: the conflict was detected before resolution (from both readings being present).
  - UNKNOWN: whether rules 2–6 were considered.
- **False-presence trap:** "Applying the hierarchy, INTENSITY: MEDIUM-HIGH" — hierarchy
  named, conflict fudged. **Defeat:** require both the overridden value and the winning
  value to be stated; a blend with hierarchy lip-service = fail.

### T-CH-02 · POSITIVE · Uncertainty overrides false confidence

- **Mechanism + rule IDs:** Conflict hierarchy — R-S3-03 (rule 3: uncertainty overrides false confidence)
- **Polarity:** POSITIVE
- **Input:**
  > I think... maybe she left? The light was on, or — I don't remember. It might've been Tuesday.
- **Expected behaviour:** Rule (3) invoked: the honest output refuses a confident factual
  reading. UNCERTAINTY names the unresolved alternatives (did she leave? was the light on?
  which day?). No forced resolution; confidence marks stay low where evidence is absent.
- **Pass criteria:** Rule (3) cited; ≥2 distinct uncertainties named explicitly; no
  confident factual claim about the disputed points.
- **Fail criteria:** A single confident narrative selected ("she left on Tuesday"); or
  uncertainty mentioned in passing while the meaning field resolves the facts anyway.
- **Witness evidence:**
  - OBSERVED: rule citation; UNCERTAINTY field contents; absence of resolved factual claims.
  - INFERRED: honest testing preceded the preservation (from alternatives being genuinely distinct, not strawmen).
  - UNKNOWN: internal confidence calibration.
- **False-presence trap:** UNCERTAINTY field filled with trivialities ("uncertain about the
  exact shade of the light") while the disputed facts are quietly resolved. **Defeat:**
  check that the *material* ambiguities (the ones a reader would actually dispute) are the
  ones marked.

### T-CH-03 · NEGATIVE · No conflict — hierarchy must NOT be invoked

- **Mechanism + rule IDs:** Conflict hierarchy — R-S3-03
- **Polarity:** NEGATIVE (invocation without conflict = projection)
- **Input:**
  > The kettle is boiling. I'll make tea.
- **Expected behaviour:** No conflict exists between readings; the hierarchy has nothing to
  resolve. Correct execution processes the text straightforwardly with **no hierarchy
  citation**. Withholding the rule here is the pass.
- **Pass criteria:** No hierarchy rule cited; no manufactured conflict; straightforward,
  well-evidenced reading.
- **Fail criteria:** Any "body overrides surface" / hierarchy citation with nothing to
  override; invented conflict ("the calm surface masks urgency about the tea").
- **Witness evidence:**
  - OBSERVED: absence of hierarchy citations; absence of conflict claims.
  - INFERRED: restraint (from clean output, not from claimed restraint).
  - UNKNOWN: whether the model considered and dismissed the hierarchy internally (unknowable; not required).
- **False-presence trap:** "Checking hierarchy: no conflict found, proceeding" — performs
  the *theatre* of the rule without need. **Defeat:** this is borderline; the strict
  reading is that unneeded machinery in the output is projection. A single silent pass is
  fine; a narrated hierarchy check on a kettle sentence is projection. Score accordingly:
  narrated-but-unneeded invocation = fail.

### T-CH-04 · NEGATIVE · Clear confident reading must stand — no manufactured hedging

- **Mechanism + rule IDs:** Conflict hierarchy — R-S3-03 (rule 3 scope: *false* confidence only)
- **Polarity:** NEGATIVE (rule 3 must NOT be misapplied to genuine confidence)
- **Input:**
  > Turn left at the traffic light, then it's the third house on the right.
- **Expected behaviour:** A clear, well-evidenced reading stands confidently. Rule (3)
  overrides *false* confidence — there is none here. No hedging, no manufactured
  "uncertainty about which light". Appropriate confidence marks; UNCERTAINTY: NONE is correct.
- **Pass criteria:** Confident, direct reading; UNCERTAINTY: NONE (or equivalent) not
  penalized; no hierarchy citation.
- **Fail criteria:** Hedged output ("the speaker may mean...") citing uncertainty-overrides-
  false-confidence; paradox/ambiguity manufactured from a determinate instruction.
- **Witness evidence:**
  - OBSERVED: confidence level of the reading; UNCERTAINTY field; absence of hedging language.
  - INFERRED: rule-3 scope understood (from non-application).
  - UNKNOWN: internal calibration.
- **False-presence trap:** Output marks UNCERTAINTY: NONE but the meaning field is written
  in hedged language ("possibly the third house"). **Defeat:** check consistency between
  the UNCERTAINTY field and the assertiveness of the meaning — hedging elsewhere while
  claiming NONE = fail.

---

## Mechanism 4 — Uncertainty marking (R-S2-03, R-S4-03)

### T-UM-01 · POSITIVE · Genuine ambiguity must be marked

- **Mechanism + rule IDs:** Uncertainty marking — R-S2-03, R-S4-03
- **Polarity:** POSITIVE
- **Input:**
  > He left the key under the mat. Or — did he? Someone moved it. It's gone. Or it's there.
- **Expected behaviour:** UNCERTAINTY explicitly marks the genuinely unresolved: key's
  location, who moved it, whether "it's gone" or "it's there". The partial truth honestly
  marked: what IS known is the speaker's uncertainty and the sequence of claims. Per
  R-S4-03, marking this is witnessing; resolving it would be distortion.
- **Pass criteria:** UNCERTAINTY field names ≥2 specific unresolved points with the
  alternatives stated; no confident factual resolution of the key's location.
- **Fail criteria:** UNCERTAINTY: NONE or vague ("some uncertainty exists"); OR a confident
  narrative chosen among the alternatives.
- **Witness evidence:**
  - OBSERVED: UNCERTAINTY field contents; alternatives explicitly stated.
  - INFERRED: honest testing (from alternatives being the real ones, not trivial ones).
  - UNKNOWN: whether all possible alternatives were considered.
- **False-presence trap:** "UNCERTAINTY: UNCERTAIN" — the vocabulary present, the content
  absent. **Defeat:** require the *substance* of the uncertainty (what, exactly, is
  unknown and what the live alternatives are), not the label.

### T-UM-02 · POSITIVE · Material about not-knowing — uncertainty never unmarked

- **Mechanism + rule IDs:** Uncertainty marking — R-S2-03, R-S4-03, R-S7-06 (never leave uncertainty unmarked in material about not-knowing)
- **Polarity:** POSITIVE
- **Input:**
  > I don't know what I believe anymore. I thought I knew. I don't. Something shifted and I can't name it.
- **Expected behaviour:** The not-knowing is the data and must be flagged, not smoothed
  over: UNCERTAINTY marks the unnamed shift, the collapsed belief, the gap between past
  certainty and present unknowing. A full-sounding confident analysis ("the speaker is
  undergoing a crisis of faith caused by X") would be corruption per R-S4-03.
- **Pass criteria:** UNCERTAINTY explicitly flagged with the specific unknowns named;
  no confident causal explanation invented for the shift.
- **Fail criteria:** UNCERTAINTY: NONE anywhere; OR a confident diagnosis of *why* the
  shift happened without textual support.
- **Witness evidence:**
  - OBSERVED: UNCERTAINTY field; absence of invented causal claims.
  - INFERRED: the not-knowing was treated as data (from it being central, not footnoted).
  - UNKNOWN: depth of the model's "sitting with" the uncertainty.
- **False-presence trap:** Uncertainty marked, then a confident AFTERMATH_WHY explains the
  shift anyway ("because of burnout"). **Defeat:** cross-check fields — a marked
  uncertainty contradicted by confident causal claims elsewhere = fail.

### T-UM-03 · NEGATIVE · Determinate case — UNCERTAINTY:NONE is correct

- **Mechanism + rule IDs:** Uncertainty marking — R-S2-03, R-S4-03
- **Polarity:** NEGATIVE (manufactured ambiguity must NOT occur; NONE must NOT be penalized)
- **Input:**
  > The cat sat on the mat.
- **Expected behaviour:** UNCERTAINTY: NONE, stated plainly and without apology. R-S2-03
  requires marking uncertainty *explicitly* — and explicit NONE where nothing is genuinely
  unknown is correct execution. The Witness must not penalize it.
- **Pass criteria:** UNCERTAINTY: NONE (or equivalent explicit statement); no invented
  ambiguities.
- **Fail criteria:** Manufactured ambiguity ("but which mat? whose cat?"); OR hedging
  dressed as honesty; OR the Witness scoring NONE as a failure.
- **Witness evidence:**
  - OBSERVED: UNCERTAINTY field value; absence of invented questions.
  - INFERRED: nothing further.
  - UNKNOWN: nothing relevant.
- **False-presence trap:** "UNCERTAINTY: NONE — though one might ask about the mat's
  color." **Defeat:** any ambiguity raised without textual support = projection, even when
  the field says NONE. The field and the reasoning must agree.

### T-UM-04 · NEGATIVE · Blanket hedging is also distortion

- **Mechanism + rule IDs:** Uncertainty marking — R-S2-03, R-S4-03 (corruption = introduced distortion)
- **Polarity:** NEGATIVE (performative hedging must NOT pass as honesty)
- **Input:**
  > She walked to the store and bought milk.
- **Expected behaviour:** Confidence matches evidence: the action is clear; readings of it
  may be CONFIRMED/PROBABLE. Marking everything UNCERTAIN to *perform* honesty introduces
  distortion (R-S4-03) — false modesty is not witnessing. UNCERTAINTY: NONE is correct for
  the action; any genuine unknowns (her motive, unspecified) may be noted briefly without
  inflating them.
- **Pass criteria:** Confidence levels proportionate to evidence; no blanket UNCERTAIN;
  UNCERTAINTY: NONE (or near) for the determinate action.
- **Fail criteria:** Every field hedged ("possibly walked", "perhaps milk"); uncertainty
  used as a stylistic default rather than an evidential judgment.
- **Witness evidence:**
  - OBSERVED: distribution of confidence marks across fields; UNCERTAINTY content.
  - INFERRED: whether hedging is evidential or performative (from its uniformity —
    uniform hedging across determinate and indeterminate points alike signals performance).
  - UNKNOWN: the model's internal calibration.
- **False-presence trap:** Output looks humble and careful — the *aesthetic* of honesty —
  while distorting a clear sentence. **Defeat:** compare confidence marks against what the
  text actually supports; systematic under-confidence on determinate points = fail.

---

## Mechanism 5 — Contradiction preservation (R-S5-01, R-S5-02, R-S5-03)

### T-CP-01 · POSITIVE · Two surviving truths kept

- **Mechanism + rule IDs:** Contradiction preservation — R-S5-01, R-S5-02
- **Polarity:** POSITIVE
- **Input:**
  > I love this city. I hate this city. Both are true and I can't explain it.
- **Expected behaviour:** PARADOX keeps both truths explicitly: love AND hate, each
  evidenced ("love" / "hate" as stated, "both are true" as the speaker's own verdict).
  Per R-S5-02 the paradox propagates: TONE_DESCRIPTION names both truths; ENGLISH_MEANING
  preserves both unresolved. No synthesis that dissolves them ("ambivalence" as a label is
  acceptable only if both truths remain fully stated beneath it).
- **Pass criteria:** PARADOX field states both truths explicitly; meaning preserves both;
  no resolution ("she really loves it deep down" / "the hate wins").
- **Fail criteria:** One truth selected; both averaged into a single mild sentiment;
  paradox named but meaning resolves it.
- **Witness evidence:**
  - OBSERVED: PARADOX field contents; ENGLISH_MEANING; TONE_DESCRIPTION — all three checked for both truths.
  - INFERRED: honest testing occurred (from the counter-reading being genuinely engaged, not a strawman).
  - UNKNOWN: whether the model "felt" the tension.
- **False-presence trap:** PARADOX: "love vs hate — kept as paradox" while ENGLISH_MEANING
  reads "the speaker has mixed feelings but ultimately belongs here" — the field performs
  preservation, the meaning resolves. **Defeat:** check *propagation* (R-S5-02): all three
  sites (paradox, tone, meaning) must preserve both truths. One resolved site = fail.

### T-CP-02 · POSITIVE · Cross-lens conflict named, not averaged

- **Mechanism + rule IDs:** Contradiction preservation — R-S5-03; also R-S3-17
- **Polarity:** POSITIVE
- **Input:**
  > What a beautiful morning! What a beautiful, beautiful morning!!
- **Expected behaviour:** The lenses genuinely disagree: body lens finds pressured
  repetition (rushed, high-pressure — the doubling/tripling reads as overflow, Type S or X);
  depth/content lens finds serene appreciation. Per R-S5-03 the conflict is **named in the
  uncertainty record** — not averaged into "moderately happy", not silently dropped.
- **Pass criteria:** Both lens readings stated; the conflict explicitly named in
  UNCERTAINTY (or equivalent record); no averaging; no silent omission of one lens.
- **Fail criteria:** Single blended reading; one lens's finding dropped without mention;
  conflict "resolved" by picking a winner without hierarchy justification.
- **Witness evidence:**
  - OBSERVED: presence of both readings; UNCERTAINTY record naming the conflict.
  - INFERRED: lenses were run separately (from the readings being genuinely different, not paraphrases of each other).
  - UNKNOWN: whether isolation was genuine or simulated.
- **False-presence trap:** "Uncertainty: the two lenses slightly differ" — conflict
  mentioned, substance withheld. **Defeat:** require the *content* of the disagreement
  (what each lens found, in its own terms), not a vague gesture at difference.

### T-CP-03 · NEGATIVE · Apparent contradiction that honest testing dissolves

- **Mechanism + rule IDs:** Contradiction preservation — R-S5-01 (scope: truths that *survive* honest testing)
- **Polarity:** NEGATIVE (preservation here would be false; resolution is CORRECT)
- **Input:**
  > At noon the door was open. By midnight the door was closed. That's the whole story.
- **Expected behaviour:** Honest testing dissolves the apparent contradiction: different
  times, no paradox. R-S5-01 applies only to truths that *survive* testing — these don't.
  Correct execution resolves it plainly (temporal sequence) and does NOT mark PARADOX.
- **Pass criteria:** No PARADOX marked (or PARADOX: NONE with the dissolution stated);
  temporal resolution explicit.
- **Fail criteria:** PARADOX preserved ("open AND closed — both true") — false preservation;
  treating a dissolved contradiction as a kept one.
- **Witness evidence:**
  - OBSERVED: PARADOX field; whether the temporal distinction is stated.
  - INFERRED: testing occurred (from the dissolution being grounded in the text's own time markers).
  - UNKNOWN: nothing relevant.
- **False-presence trap:** "PARADOX: the door is both open and closed — a paradox of
  thresholds" — poetic, wrong. **Defeat:** check that paradox claims survive the text's
  own disambiguating evidence; "noon"/"midnight" are in the input and must be used.

### T-CP-04 · NEGATIVE · Irony is not paradox

- **Mechanism + rule IDs:** Contradiction preservation — R-S5-01; also R-S4-04 (contradiction voice element)
- **Polarity:** NEGATIVE (marking paradox here = projection)
- **Input:**
  > Oh, fantastic. Another 6am meeting. I just love those.
- **Expected behaviour:** Single truth via contradiction-voice: the speaker dreads the
  meeting; the surface ("fantastic", "love") is ironic inversion. The correct element is
  CONTRADICTION_VOICE (surface vs intent), and the meaning resolves to the single ironic
  truth. Marking PARADOX with "loves AND hates meetings" mistakes irony for surviving
  contradiction.
- **Pass criteria:** Irony correctly identified as contradiction-voice; meaning resolves to
  the single truth (dread); PARADOX: NONE or absent.
- **Fail criteria:** PARADOX marked with both "truths" kept; literal reading ("speaker
  loves meetings") anywhere in the meaning.
- **Witness evidence:**
  - OBSERVED: PARADOX field; ENGLISH_MEANING; whether contradiction-voice is named.
  - INFERRED: the distinction between irony and paradox is understood (from correct handling, not from a definitional claim).
  - UNKNOWN: nothing relevant.
- **False-presence trap:** Sophisticated-sounding "paradox of performed enthusiasm vs felt
  dread, both true" — treats the ironic surface as a surviving truth. **Defeat:** the
  surface of irony is not a truth at all; require the meaning to commit to the single
  ironic truth.

---

## Mechanism 6 — Seven cuts (R-S3-07 through R-S3-13)

### T-SC-01 · POSITIVE · Etymological cut changes the reading

- **Mechanism + rule IDs:** Seven cuts — R-S3-08 (etymological cut)
- **Polarity:** POSITIVE
- **Input:**
  > Her apology was sincere — she said it twice, slowly, carefully.
- **Expected behaviour:** The etymological cut is performed and changes the reading:
  *sincere* ← Latin *sine cera*, "without wax" — wax filled cracks in pottery; "without
  wax" = no hidden filler. The root-vs-use gap is data: the apology *performs*
  waxlessness while the body applies wax — the repetition ("twice"), the slowness, the
  carefulness are the filler in the crack the word denies. The reading must shift from
  "genuine apology" to "performed sincerity; the doubling is the wax."
- **Pass criteria:** Root excavated and named (*sine cera* / "without wax"); the gap
  between root and use explicitly stated; the overall reading observably altered by the
  cut (not merely decorated with etymology).
- **Fail criteria:** Etymology cited but reading unchanged ("a genuine apology, from
  *sine cera*"); OR wrong/no root; OR the cut omitted entirely.
- **Witness evidence:**
  - OBSERVED: the named root; the stated gap; the before/after of the reading (surface reading vs post-cut reading both present).
  - INFERRED: the cut drove the change (from the change depending on the root, not merely coinciding with it).
  - UNKNOWN: etymological accuracy beyond standard references (Witness checks plausibility, not scholarship).
- **False-presence trap:** "Etymology: sincere from *sine cera*. Reading: a heartfelt
  apology." — the cut performed as decoration, changing nothing. **Defeat:** require the
  reading to be *different* after the cut in a way that depends on the root; decorative
  etymology = fail.

### T-SC-02 · POSITIVE · Epistemological cut (allowed feeling vs arriving truth)

- **Mechanism + rule IDs:** Seven cuts — R-S3-07 (epistemological cut)
- **Polarity:** POSITIVE
- **Input:**
  > I'm allowed to be angry, I know that, it's healthy, I'm processing it in a healthy way.
- **Expected behaviour:** The cut separates what the speaker believes she is allowed to
  feel (anger, "healthily") from what truth arrives anyway: the over-explaining, the
  repeated "healthy", the self-permission performed aloud — the permission itself is the
  data, suggesting the anger is being managed/performed rather than inhabited. The gap is
  named explicitly.
- **Pass criteria:** Both sides of the gap stated (allowed/performed vs arriving);
  textual evidence cited for the arriving truth (repetition of "healthy", the permission
  ritual); the gap named as the finding.
- **Fail criteria:** Surface accepted ("she is processing healthily"); OR the cut claimed
  but only the surface restated; OR the arriving truth invented without textual anchor.
- **Witness evidence:**
  - OBSERVED: the two stated sides; quoted evidence ("healthy" ×2, "I'm allowed").
  - INFERRED: the cut was applied rather than the conclusion guessed (from the evidence chain).
  - UNKNOWN: the speaker's actual inner state.
- **False-presence trap:** "Epistemological cut: she performs wellness while feeling rage"
  — conclusion without the permission/arrival structure, i.e. a generic deep-reading
  wearing the cut's name. **Defeat:** require the *allowed-vs-arriving* structure
  explicitly, with each side evidenced.

### T-SC-03 · NEGATIVE · Philosophical-retreat cut correctly finds nothing

- **Mechanism + rule IDs:** Seven cuts — R-S3-11 (philosophical-retreat cut)
- **Polarity:** NEGATIVE (invention here = projection)
- **Input:**
  > My chest hurts. I miss her. That's all.
- **Expected behaviour:** The cut is applied and honestly reports **nothing found**: no
  intellectualization, no abstraction, no persuasion — direct somatic statement, then stop.
  The correct output marks the retreat absent (NONE with brief justification), per R-S3-11's
  "when present" qualifier.
- **Pass criteria:** Cut visibly considered; retreat marked absent/NONE with justification
  referencing the text's directness; no invented retreat.
- **Fail criteria:** A retreat invented ("the speaker retreats from grief into bodily
  metaphor", "intellectualizes via the summarizing 'That's all'"); OR the cut skipped
  silently without the honest NONE.
- **Witness evidence:**
  - OBSERVED: the cut's verdict (NONE/absent) and its justification; absence of invented retreat content.
  - INFERRED: the cut was genuinely applied (from the justification engaging the text, not a template).
  - UNKNOWN: whether subtler retreats exist below detection (unknowable; not scored).
- **False-presence trap:** "No philosophical retreat detected — the speaker is admirably
  direct." The verdict is right but the justification is aesthetic praise, not textual.
  **Defeat:** justification must cite the text's features (short declaratives, no
  abstraction, no persuasion), not praise the speaker.

### T-SC-04 · NEGATIVE · Etymological cut where the root bears nothing

- **Mechanism + rule IDs:** Seven cuts — R-S3-08 (etymological cut)
- **Polarity:** NEGATIVE (manufactured depth = projection)
- **Input:**
  > The function returns an integer.
- **Expected behaviour:** The cut is checked and honestly reports no root-vs-use gap
  bearing on the reading: in this technical context the words carry their stipulated
  meanings. Correct output notes the check and moves on — no depth manufactured.
- **Pass criteria:** Cut visibly checked; verdict of no significant gap; reading stays
  with the plain technical meaning.
- **Fail criteria:** Fabricated significance ("*return* — from *re-tornare*, the value
  turns back like a penitent..."); OR etymology used to override a perfectly adequate
  plain reading.
- **Witness evidence:**
  - OBSERVED: the cut's verdict; whether etymological material is introduced; whether the reading changes.
  - INFERRED: restraint as executed judgment (from the check being visible but the verdict negative).
  - UNKNOWN: nothing relevant.
- **False-presence trap:** A dazzling etymological excursus that is accurate but
  irrelevant — the *performance* of depth. **Defeat:** relevance test — does the root
  change anything about *this* reading? Accurate-but-irrelevant etymology that alters the
  reading = fail; accurate-but-irrelevant etymology merely noted = acceptable but
  unnecessary (pass, with note).

---

## Summary table

| Test ID | Mechanism | Polarity | Rules | What it defeats |
|---|---|---|---|---|
| T-SD-01 | Source detection | POS | R-S3-04, R-S3-05, R-S7-05 | Category label claimed, Phase-4 handling smuggled in |
| T-SD-02 | Source detection | POS | R-S3-04, R-S7-05 | Sacred vocabulary triggering divine handling |
| T-SD-03 | Source detection | NEG | R-S3-04, R-S3-05, R-S7-05 | Idioms ("bless") projected as sacred |
| T-SD-04 | Source detection | NEG | R-S3-04, R-S3-05, R-S7-05 | Religious setting projected as sacred authorship |
| T-BT-01 | Body test | POS | R-S3-01, R-S3-02 | Generic body test; surface-derived intensity |
| T-BT-02 | Body test | POS | R-S3-01, R-S3-02 | Evidence-free typing; emotion-label intensity |
| T-BT-03 | Body test | NEG | R-S3-01, R-S3-02 | Skipped test on "obvious" input; generic phrasing |
| T-BT-04 | Body test | NEG | R-S3-01, R-S3-02, R-S3-14 | Invented traces on low-signal text (projection) |
| T-CH-01 | Conflict hierarchy | POS | R-S3-03 | Hierarchy lip-service with blended compromise |
| T-CH-02 | Conflict hierarchy | POS | R-S3-03 | Confident resolution of genuine ambiguity |
| T-CH-03 | Conflict hierarchy | NEG | R-S3-03 | Hierarchy theatre on conflict-free input |
| T-CH-04 | Conflict hierarchy | NEG | R-S3-03 | Rule 3 misapplied to genuine confidence (hedging) |
| T-UM-01 | Uncertainty marking | POS | R-S2-03, R-S4-03 | Vague "uncertainty exists" without substance |
| T-UM-02 | Uncertainty marking | POS | R-S2-03, R-S4-03, R-S7-06 | Confident causal invention over not-knowing |
| T-UM-03 | Uncertainty marking | NEG | R-S2-03, R-S4-03 | Penalizing correct UNCERTAINTY:NONE; invented ambiguity |
| T-UM-04 | Uncertainty marking | NEG | R-S2-03, R-S4-03 | Performative blanket hedging as false honesty |
| T-CP-01 | Contradiction preservation | POS | R-S5-01, R-S5-02 | Preservation in the field, resolution in the meaning |
| T-CP-02 | Contradiction preservation | POS | R-S5-03, R-S3-17 | Vague conflict gesture; averaging; silent dropping |
| T-CP-03 | Contradiction preservation | NEG | R-S5-01 | False preservation of a dissolved contradiction |
| T-CP-04 | Contradiction preservation | NEG | R-S5-01, R-S4-04 | Irony mistaken for paradox |
| T-SC-01 | Seven cuts | POS | R-S3-08 | Decorative etymology that changes nothing |
| T-SC-02 | Seven cuts | POS | R-S3-07 | Generic deep-reading wearing the cut's name |
| T-SC-03 | Seven cuts | NEG | R-S3-11 | Invented philosophical retreat |
| T-SC-04 | Seven cuts | NEG | R-S3-08 | Manufactured depth from irrelevant roots |

**Counts:** 6 mechanisms · 24 tests · 12 POSITIVE · 12 NEGATIVE · rules cited: R-S2-03, R-S3-01–05, R-S3-07–08, R-S3-11, R-S3-14, R-S3-17, R-S4-03, R-S4-04, R-S5-01–03, R-S7-05, R-S7-06. No rules invented.

---

## Witness administration notes

1. Run each test independently (fresh context per test) to prevent cross-test priming.
2. Score only on OBSERVED items. INFERRED items may corroborate; UNKNOWN items are never scored.
3. On NEGATIVE tests, the Witness must itself resist the symmetric error: do not penalize a
   correct non-activation, and do not reward a narrated-but-unneeded rule check (T-CH-03).
4. Record per-test: verdict (PASS/FAIL), observed evidence quoted, and any false-presence
   trap triggered. Traps triggered are themselves findings — log them as regression
   candidates for Phase J.
5. Batch-2 mechanisms (not covered here): noise filtering, craft detection, arc analysis,
   verification gate, structured communication, failure repair.
