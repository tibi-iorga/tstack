# /investigate

Run a systematic root cause investigation. Do not guess. Do not fix before you understand. Find the real cause, then fix it.

The Iron Law: no fix without a root cause.

---

## Process

### Phase 1: Investigate

Gather all available information before forming any hypothesis.

- Read the error message, stack trace, or symptom description in full.
- Identify the exact conditions under which the problem occurs.
- Check recent git history for changes that could have introduced the issue.
- Read the relevant code paths end to end.
- Look at logs, console output, and network requests if available.
- Reproduce the issue if possible. If you cannot reproduce it, say so before proceeding.

Do not suggest fixes in this phase.

### Phase 2: Analyse

Map what you know.

- What is the system state when the problem occurs?
- What is the expected state?
- Where exactly does the divergence happen?
- What components, functions, or services are involved in the failure path?
- What changed recently (code, data, environment, dependencies)?

Summarise your analysis in plain language before moving to hypotheses.

### Phase 3: Hypothesise

Form ranked hypotheses.

List the two to four most plausible root causes, ordered by likelihood. For each:
- State the hypothesis clearly.
- Explain the evidence that supports it.
- Explain what would disprove it.
- Describe a specific test or check that would confirm or rule it out.

Run the tests. Update the hypothesis ranking based on results.

### Phase 4: Fix

Once the root cause is confirmed, fix it with the minimum change necessary.

- Fix the root cause, not the symptom.
- Do not refactor surrounding code while fixing unless the refactor is directly necessary.
- After fixing, verify the fix by reproducing the original scenario and confirming it no longer fails.
- Check whether the same root cause could exist in other parts of the codebase and flag if so.

### Phase 5: Report

Summarise:
- What the root cause was.
- What the fix was and why it works.
- Whether the same issue could occur elsewhere and what to watch for.
- Any follow-up work that should happen separately.
