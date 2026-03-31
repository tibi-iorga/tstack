---
name: qa
description: "Runs Playwright browser tests, finds bugs, fixes them, loops until clean."
---

# /qa

Run a QA session using Playwright. Find bugs, fix them, and loop until the experience is clean.

---

## Process

### Step 1: Understand the scope

Ask the user:
- What is the URL or local address to test?
- What flows or features should be tested?
- Are there any known issues to look for, or is this exploratory?

If a PRD or feature spec is available, read it to understand the expected behaviour.

### Step 2: Run Playwright tests

Use the Playwright MCP tools to navigate the application and test the specified flows. For each flow:

1. Navigate to the starting point.
2. Complete the user journey step by step.
3. Take screenshots at key steps to document the state.
4. Note any errors, broken states, or unexpected behaviour.

Test for:
- Core happy path functionality (does the main flow work?).
- Error states (what happens with invalid input or missing data?).
- Edge cases (empty states, long strings, slow connections).
- Responsive behaviour if relevant.
- Console errors (check for JavaScript errors throughout).

### Step 3: Document findings

For each bug found, record:
- What the bug is (clear description).
- Where it occurs (URL, component, step in the flow).
- Steps to reproduce.
- What the expected behaviour is.
- What the actual behaviour is.
- Severity: critical (blocks core flow), important (degrades experience), or minor (cosmetic or edge case).

### Step 4: Fix bugs

Fix critical and important bugs. For each fix:
- Make the minimal change needed.
- Do not refactor surrounding code unless it is directly causing the bug.
- After fixing, re-test the specific flow to confirm the fix works.

### Step 5: Loop

After fixing, run through the affected flows again using Playwright. Continue until no critical or important bugs remain.

Report the final state: what was found, what was fixed, and what (if anything) is outstanding.

---

## Rules

- Always verify fixes by re-running the relevant test flow, not just by reading the code.
- Do not introduce new patterns or abstractions while fixing bugs.
- If a bug requires a larger architectural change, document it and flag it to the user rather than fixing it in scope.
- Take screenshots before and after fixes on critical issues.
