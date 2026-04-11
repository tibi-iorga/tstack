# tstack

Personal AI skills toolkit for product management, strategy, and software development. Shameless name rip off from Garry Tan's [gstack](https://github.com/garrytan/gstack), but made for my workflow.

## Available Skills

Invoke any skill with `/skill-name` in Claude Code.

### Product and Strategy

- **office-hours** — YC-style reality check on an idea. Brutal honesty on demand, market, and whether it is worth pursuing.
- **1pager** — Creates a structured one-pager from context: problem, hypothesis, goals, scope, risks.
- **prd** — Asks clarifying questions then generates a full PRD saved to /tasks.
- **strategy-memo** — Generates a concise strategy memo: problem, vision, principles, goals, solution, non-priorities.
- **sowhat** — Runs the So What framework five times in sequence, forcing progressively deeper insight from any observation.
- **instrumentation** — Walks through building a metric tree: business outcomes, product outcomes, leading indicators.
- **ai-moat** — Stress tests an idea's defensibility when AI compresses software costs to zero, then recommends pivots toward durable moats.
- **ooda** — Decomposes a human role or workflow into OODA sub-functions, classifies which AI absorbs today and which stay irreducibly human, then points to where durable value accrues.

### Councils (Multi-Perspective Reviews)

- **strategy-review** — Stress-tests a strategy from three angles: devil's advocate, SWOT, then bear/bull/base scenarios.
- **pm-review** — Reviews a PRD from three seats: engineering feasibility, executive business value, user researcher empathy.
- **mentor-review** — Gets POV and recommendations from Marc Andreessen, Andy Grove, Jack Welch, Clayton Christensen, Brian Chesky, and Travis Kalanick.
- **design-council** — Generates fundamentally different design approaches to the same problem (different interaction paradigms, mental models, design patterns), then combs the chosen direction for consistency issues.

### Communications

- **release-notes** — Generates honest, customer-facing release notes answering the seven key questions.
- **impact-story** — Turns survey data and usage metrics into a polished internal impact story for leadership.
- **exec-email** — Drafts a strategic executive email: context, insights, recommendation, one clear ask.

### Engineering

- **review** — Pre-merge code review. Flags bugs, logic errors, security issues, and pattern violations.
- **qa** — Runs Playwright browser tests, finds bugs, fixes them, loops until clean.
- **ship** — Bumps version, updates changelog, commits, pushes, and opens a pull request.
- **investigate** — Systematic root cause debugging: investigate, analyse, hypothesise, then fix.

### Maintenance

- **tibi-upgrade** — Pulls the latest skills from GitHub.

## Update Check

On the first skill invocation in a session, run the update check silently:

```bash
~/.claude/skills/tstack/bin/tstack-update-check 2>/dev/null || true
```

If the output contains `UPGRADE_AVAILABLE`, tell the user: "tstack **v{new}** is available (you're on v{old}). Run `/tibi-upgrade` to update." Then continue with the skill as normal.

## Skills Location

Each skill lives in its own folder following the Claude Code convention: `~/.claude/skills/<skill-name>/SKILL.md`.

## Global Behaviour

All skills follow the conventions in `agents.md`:

- British English throughout.
- No dashes; use commas, semicolons, or periods instead.
- Simple, direct language.
- Senior product manager tone.
- No invented data or speculative metrics.
