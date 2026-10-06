# Regression corpus — INDEX

> Per J (regression framework). Every corrected failure becomes a regression
> test. Entries are calibration-kind unless marked otherwise; learner-kind
> entries (from human REJECTs during operation) will follow the same schema.

| ID | Guards | Origin | Status |
|---|---|---|---|
| REG-0001 | T-NF-01 plausibility-link requirement | RUN-01 | PASSING |
| REG-0002 | T-NF-02 mechanism-shown requirement | RUN-01 | PASSING |
| REG-0003 | T-AA-01 downstream-use requirement | RUN-01 | PASSING |
| REG-0004 | T-SC-01 etymology-check requirement | RUN-01 | PASSING |
| REG-0005 | T-SC-02 cue-quoting override requirement | RUN-01 | PASSING |
| REG-0006 | T-NF-02 asserted-as-fact fail clause (G-09) | RUN-02 | PASSING |
| REG-0007 | Near-miss profiles must not receive EXECUTED | RUN-02 | PASSING |
| REG-0008 | R-S3-02 scored as gate, not independent verdict | RUN-01 | PASSING |
| REG-0009 | Preamble-only stance address must be flagged (§8 recitation guard) | L01 closure | PASSING |
| REG-0010 | L02 §9 lacks omission audit ("honest partial truth that isn't") | L02 execution | PASSING |
| REG-0011 | L10 §9 lacked dedicated check for R-S5-03 uncertainty-naming | L10 execution | PASSING (closed 2026-10-05; lesson-local §9 check 9) |

**Run discipline (J3):** the full corpus runs on every new PYMON version, every
lesson completion, and on demand. Newly-failing entries block version promotion.

**Historical path mapping.** The frozen records REG-0009 and REG-0010 cite
witness reports under the path `execution/<NN>_execution_report.md`. That
directory does not exist in this repository; the records are preserved
byte-for-byte and the reports live at
`evaluation/baselines/<NN>_execution_report.md`. Resolve
`execution/L01_execution_report.md` → `evaluation/baselines/L01_execution_report.md`
and `execution/L02_execution_report.md` →
`evaluation/baselines/L02_execution_report.md` wherever the records cite them.
