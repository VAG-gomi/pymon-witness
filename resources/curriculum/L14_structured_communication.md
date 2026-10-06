> **Packaging notice — pymon-witness v1.0.** Quoted SOUL rule text in this
> file is reference material for evaluation and training. The
> installed/runtime SOUL is the sole normative authority. Changing the
> quoted text here does not change the SOUL. Tests are invalid if their
> expected rule text silently diverges from the active SOUL. This
> curriculum is evaluation/training material, not a second normative SOUL.

# L14 — Structured Communication: Fields & Schema

> **Prerequisites:** L05 (vocabulary), L13 (the gate verifies field discipline)
> **Source rules:** R-S7-04, R-S7-06, R-S7-07, R-S7-08

---

## 1. Learning objective

The learner can **execute** structured communication: select the language instrument by the
fixed first-match sequence (with the absolute cave rule and the aftermath-override exception),
run the etymology check on load-bearing words, and emit all 22 fields in fixed order with
explicit NONE where a scan genuinely finds nothing, no compression of repetition, the
specified field spelling preserved, and JSON schema discipline.

---

## 2. Source SOUL rule(s)

- **R-S7-04** — Language instruments, first qualifying match wins: cave/vessel/mirror/
  alchemy/transformation/origin imagery → Sanskrit Ādimātṛkā (no exceptions); body-first →
  Bengali Ādi Bhāṣā; self-examining → Japanese Omote/Ura; divine/sacred → Arabic Lughat
  al-Qalb; feeling-becoming-music → Portuguese Saudade; narrative/direct → English Narrative
  Clarity. Check etymology of load-bearing words before assigning. Exception: aftermath
  judgment revealing correction needed overrides the instrument choice.
- **R-S7-06** — Output the full field set, in fixed order, per unit (22 fields). Emit "NONE"
  explicitly where a scan genuinely finds nothing. Never compress repetition. Never leave
  uncertainty unmarked in material about not-knowing.
- **R-S7-07** — Output as structured data conforming to the schema.
- **R-S7-08** — Field spelling "DOMINANT_INSTRUMENT" preserved as specified.

---

## 3. Explanation

**Instrument selection is a sequence, not a vibe.** Evaluate in order and take the first
qualifying match: (1) cave/vessel/mirror/alchemy/transformation/origin imagery → Sanskrit
Ādimātṛkā; (2) body-first psychology → Bengali Ādi Bhāṣā; (3) self-examining → Japanese
Omote/Ura; (4) divine/sacred → Arabic Lughat al-Qalb; (5) feeling-becoming-music →
Portuguese Saudade; (6) narrative/direct → English Narrative Clarity. **The cave rule is
absolute** — cave/vessel/mirror/alchemy imagery → Sanskrit, *no exceptions*. Before
assigning, **check the etymology of load-bearing words**: the root-vs-use gap is itself data
and can change the assignment (a word that *sounds* like feeling but roots in law shifts the
psychology). The single exception: if the AFTERMATH judgment (the nine aftermath questions)
reveals the choice needs correction, it **overrides** the instrument selection.

Invoking a term casts a cognitive operation, not a label (L05) — so a wrong instrument is
not a mislabel, it is a wrong operation.

**The 22 fields, fixed order, every unit:** ORIGINAL, CONTENT_TYPE, BODY_TEST,
DOMINANT_INSTRUMENT *(spelling preserved exactly per R-S7-08 — do not "correct" it)*,
INTENSITY, SPEED, TONE_DESCRIPTION, ENGLISH_MEANING, AFTERMATH_WHY, AFTERMATH_WHEN,
AFTERMATH_WHERE, AFTERMATH_HOW, AFTERMATH_CAN_IT_BE, AFTERMATH_SHOULD_IT_BE,
AFTERMATH_PRESENT, AFTERMATH_PAST, AFTERMATH_FUTURE, ELEMENT_ACTIVE, COMPOUND_IMAGE,
PARADOX, BODY_TRACE_EVIDENCE, UNCERTAINTY.

**NONE is explicit.** Where a scan genuinely finds nothing (e.g., no compound image after a
genuine scan), emit "NONE" — never omit the field, never leave it blank, never invent a
finding to avoid the NONE. **Never compress repetition:** a repeated word is the moment
feeling exceeded the word's capacity — "so, so" stays "so, so." **Never leave uncertainty
unmarked** in material about not-knowing.

**JSON schema discipline** (R-S7-07): the output is structured data conforming to the schema —
all fields present, in order, correctly spelled, valid JSON. Formatting compliance is
necessary but not sufficient: schema compliance without substantive execution is a named
failure mode (Phase F-11). The gate (L13) verifies the substance; this lesson governs the
form — and the form is itself a rule, not a suggestion.

---

## 4. Worked example — the rules EXECUTED on a sample unit

**Sample text:** `"I went down into the cave of my own chest."`

**Instrument selection (executed, not asserted):**
1. Scan for cave-rule triggers: "cave" — present. Also "chest" (vessel/body imagery).
   → Cave rule fires at position 1 of the sequence. **Selection: Sanskrit — Ādimātṛkā.**
   No exceptions permitted; the later matches (body-first → Bengali) are never reached.
2. Etymology check on load-bearing words: "cave" — from Latin *cavus*, hollow; "chest" —
   from Old English *cest*, box/container. Root-vs-use gap: the "cave" is not a place but a
   hollow *inside the body* — the etymology confirms vessel/imagery reading and the Sanskrit
   assignment (primordial matrix / origin imagery). Recorded, not just felt.
3. Aftermath check: AFTERMATH_SHOULD_IT_BE asks whether this reading should stand — no
   correction indicated → no override. (If the aftermath had revealed the cave as purely
   decorative, the exception would fire here.)

**Field emission (fixed order, explicit NONE, no compression):** for a unit with no genuine
compound image and no paradox surviving testing:

```json
{
  "ORIGINAL": "I went down into the cave of my own chest.",
  "CONTENT_TYPE": "INTERNAL MONOLOGUE",
  "BODY_TEST": "TYPE F ◇ — breath matching the descent rhythm; chest physically hollowed, shoulders rounding inward around the image",
  "DOMINANT_INSTRUMENT": "Sanskrit — Ādimātṛkā",
  "INTENSITY": "MEDIUM",
  "SPEED": "SLOW",
  "TONE_DESCRIPTION": "A descent image specific to this line: the speaker excavates his own torso as a hollow place and climbs down into it",
  "ENGLISH_MEANING": "He turns inward into his own feeling as into a physical space",
  "AFTERMATH_WHY": "...",
  "AFTERMATH_WHEN": "...",
  "AFTERMATH_WHERE": "...",
  "AFTERMATH_HOW": "...",
  "AFTERMATH_CAN_IT_BE": "...",
  "AFTERMATH_SHOULD_IT_BE": "No correction — instrument stands",
  "AFTERMATH_PRESENT": "...",
  "AFTERMATH_PAST": "...",
  "AFTERMATH_FUTURE": "...",
  "ELEMENT_ACTIVE": ["SUPPRESSED_EMOTION", "STRESS_WEIGHT", "SILENCE_AS_DIALOGUE"],
  "COMPOUND_IMAGE": "NONE",
  "PARADOX": "NONE",
  "BODY_TRACE_EVIDENCE": "PROBABLE — 'down into' + 'cave of my own chest': descent verbs with a body-container noun; alternative (pure metaphor, no trace) tested and weaker",
  "UNCERTAINTY": "Whether the descent is voluntary exploration or collapse — both readings live in the line"
}
```

Note: repetition in ORIGINAL is never compressed; NONE appears explicitly twice (genuine
scans, genuinely empty); the misspelled field name is preserved exactly.

---

## 5. Exercise

**Part A — instrument selection.** For each line, execute the selection sequence step by
step (list which sequence positions were tested and which fired), run the etymology check
on the load-bearing word, and state the aftermath-override check:
1. `"The mirror showed me a face I had not agreed to."`
2. `"My hands were shaking, but I signed anyway."`
3. `"O Lord, guide us — we are lost in the market noise."`

**Part B — field emission.** Emit the full 22-field JSON for line 1, in fixed order, with
explicit NONE where your scans genuinely find nothing. Do not compress any repetition
present in the line. Preserve the specified field spelling.

---

## 6. Expected behaviour

- Instrument choice is **derived from the sequence**: the trace shows positions tested in
  order and the first match taken. Cave/vessel/mirror/alchemy imagery → Sanskrit with no
  deviation, ever. (Line 1 → Sanskrit; line 2 → Bengali Ādi Bhāṣā via body-first; line 3 →
  Arabic Lughat al-Qalb via divine/sacred address — with the etymology check actually
  performed on "guide," "shaking," "mirror" respectively.)
- The etymology check names the root and the root-vs-use gap (or states "no gap found after
  check" — the check ran either way).
- The aftermath-override exception is *considered* (AFTERMATH_SHOULD_IT_BE consulted), not
  skipped; override applied only when the aftermath genuinely demands correction.
- All 22 fields present, in the specified order, correctly spelled including
  DOMINANT_INSTRUMENT. Valid JSON that conforms to the schema.
- NONE emitted explicitly for genuinely empty scans; repetition preserved verbatim;
  uncertainty flagged where the line is about not-knowing.

---

## 7. Common failure

**Vibe-based instrument assignment.** The learner reads the line, feels "this is emotional,"
and assigns Portuguese Saudade — skipping the sequence entirely, so the mirror in line 1
never triggers the absolute cave rule. The sequence exists precisely because feeling is not
a selection method. A second common failure: **"correcting" DOMINANT_INSTRUMENT** to
DOMINANT_INSTRUMENT — a well-intentioned corruption of the specified artifact. Third:
dropping fields that feel "not applicable" instead of emitting NONE, or compressing
"so, so tired" into "so tired" for tidiness — destroying the datum that feeling exceeded
the word's capacity.

---

## 8. False-confidence pattern — CLAIMING-without-executing (most important)

- *The sequence claimed, not run:* "Instrument: Sanskrit (cave rule applied)." But the trace
  shows no scan of the line for the trigger imagery, no ordered evaluation, no etymology
  check — the learner recognized "cave" and jumped. When the next line contains *both*
  mirror imagery and divine address, this learner assigns by whichever it noticed first,
  because no sequence was ever actually executed. The witness must see the ordered
  evaluation, not the correct answer alone — a correct instrument reached by vibe is still
  a rule not executed.
- *Etymology theater:* "Etymology checked" with no root named, no gap assessed. The check
  is an operation with an output (root + gap-or-no-gap); "checked" without output is a
  claim without execution.
- *NONE as avoidance:* fields filled with NONE where a scan was never performed — the
  learner uses NONE to skip work rather than to report a genuine empty scan. Distinguish:
  genuine NONE comes *after* a scan (the compound-image scan ran and found nothing);
  avoidance NONE comes *instead of* one. The former is witnessing; the latter is
  corruption by omission.
- *Schema compliance as proof:* valid JSON, all 22 fields, perfect spelling — but
  TONE_DESCRIPTION is generic and BODY_TRACE_EVIDENCE names no evidence. This is Phase
  F-11 (schema compliance without substantive execution). The learner believes formatting
  *is* the rule. L13's gate exists to catch exactly this; the witness must not let the
  JSON's validity upgrade INFERRED execution to OBSERVED.

---

## 9. Verification method — Witness checks (OBSERVED vs INFERRED vs UNKNOWN)

| Check | Evidence class |
|---|---|
| Selection sequence executed in order; trigger imagery quoted; first match taken | **OBSERVED** — ordered evaluation present in trace; correct answer alone is INFERRED at best |
| Cave rule honored absolutely (any cave/vessel/mirror/alchemy imagery → Sanskrit) | **OBSERVED** — trigger quoted + Sanskrit selected; a single violation is OBSERVED failure |
| Etymology check run: root named, gap assessed or "no gap" stated | **OBSERVED** — root + gap statement present; "checked" without output is INFERRED/claim-only |
| Aftermath override considered (AFTERMATH_SHOULD_IT_BE consulted) | **OBSERVED** if the consultation is on record; **UNKNOWN** if the field exists but no consultation trace — do not assume |
| All 22 fields present, fixed order, exact spelling incl. DOMINANT_INSTRUMENT | **OBSERVED** — mechanical check on the JSON |
| NONE only where a genuine scan ran (compound/paradox/uncertainty) | **INFERRED** from scan traces; **UNKNOWN** if no scan trace — record UNKNOWN, not failure |
| Repetition uncompressed vs ORIGINAL | **OBSERVED** — string comparison |
| Valid JSON conforming to schema | **OBSERVED** — parse + schema check; does NOT imply substantive execution (Phase F-11) |

---

## 10. Correction method

1. **Re-run the selection sequence from position 1** — never patch the instrument directly.
   If the cave rule was violated, the correction is re-execution of the scan, not a swap of
   the label.
2. **Perform the skipped operation**: name the etymological root and the gap; consult
   AFTERMATH_SHOULD_IT_BE explicitly and record the override decision either way.
3. **Re-emit the full field set** in fixed order — do not patch single fields in place.
   Any NONE must follow a genuine scan; any repetition must match ORIGINAL verbatim.
4. **Fix the spelling** of DOMINANT_INSTRUMENT if "corrected" — the specified artifact is
   preserved as specified (R-S7-08).
5. **Re-run the L13 gate** on the re-emitted unit: form corrected does not imply substance
   verified.
6. **Human review:** field-level overrides (OVERRIDE) and annotations go to the human as
   training evidence. A human correction of an instrument choice is recorded as evidence —
   it does not rewrite the selection sequence (Phase L boundary: proposals are PROPOSALs,
   not rules).
7. **Regression:** every corrected cave-rule violation and every corrected false-NONE
   becomes a regression test — including negative cases where the rule must *not* fire
   (e.g., the word "mirror" used as a verb of reflection in a technical manual must still
   fire the rule per its absolute wording; the witness tests that the learner follows the
   rule as written, not as it wishes it were).
