# tstack

A personal AI skills toolkit for product management, strategy, and software development built for Claude Code.

Shameless name rip off from Garry Tan's [gstack](https://github.com/garrytan/gstack), but made for my workflow.

---

## What it is

tstack is a collection of slash commands for Claude Code that act as a personal council of specialists. Each skill embodies a distinct role or framework, from YC-style product critique to systematic root cause debugging. The goal is to have opinionated, high-quality thinking partners available instantly, without re-prompting from scratch every time.

---

## Setup

**Option 1: paste this into Claude Code**

Open Claude Code and paste the following message into the chat:

```
I want to install tstack from https://github.com/tibi-iorga/tstack. Please run the setup script:

git clone https://github.com/tibi-iorga/tstack.git ~/.claude/skills/tstack && cd ~/.claude/skills/tstack && ./setup

Then confirm how many skills were installed.
```

Claude will clone the repo and run setup for you.

**Option 2: run it yourself**

```bash
git clone https://github.com/tibi-iorga/tstack.git ~/.claude/skills/tstack && cd ~/.claude/skills/tstack && ./setup
```

Requirements: [Claude Code](https://claude.ai/code) and Git.

The setup script clones the repo to `~/.claude/skills/tstack`, registers it in your `~/.claude/CLAUDE.md`, and installs each skill as `~/.claude/skills/<skill-name>/SKILL.md` following the native Claude Code convention. Restart Claude Code after setup.

---

## Skills

### Product and Strategy

| Skill | What it does |
|---|---|
| `/office-hours` | YC-style reality check on an idea. Brutal honesty on demand, market, and whether it is worth pursuing. |
| `/1pager` | Creates a structured one-pager from context: problem, hypothesis, goals, scope, risks. |
| `/prd` | Asks clarifying questions then generates a full PRD saved to /tasks. |
| `/strategy-memo` | Generates a concise strategy memo: problem, vision, principles, goals, solution, non-priorities. |
| `/sowhat` | Runs the So What framework five times in sequence, forcing progressively deeper insight from any observation. |
| `/instrumentation` | Walks through building a metric tree: business outcomes, product outcomes, leading indicators. |
| `/ai-moat` | Stress tests an idea's defensibility when AI compresses software costs to zero, then recommends pivots toward durable moats. |
| `/ooda` | Decomposes a human role or workflow into OODA sub-functions, classifies which AI absorbs today and which stay irreducibly human, then points to where durable value accrues. |

### Councils

Multi-perspective reviews where different lenses run in sequence to surface blind spots.

| Skill | What it does |
|---|---|
| `/strategy-review` | Stress-tests a strategy from three angles: devil's advocate, SWOT, then bear/bull/base scenarios. |
| `/pm-review` | Reviews a PRD from three seats: engineering feasibility, executive business value, user researcher empathy. |
| `/mentor-review` | Gets POV and recommendations from Marc Andreessen, Andy Grove, Jack Welch, Clayton Christensen, Brian Chesky (Airbnb), and Travis Kalanick (Uber). |
| `/design-council` | Generates fundamentally different design approaches to the same problem (different interaction paradigms, mental models, design patterns), then combs the chosen direction for consistency issues. |

### Communications

| Skill | What it does |
|---|---|
| `/release-notes` | Generates honest, customer-facing release notes answering the seven key questions. |
| `/impact-story` | Turns survey data and usage metrics into a polished internal impact story for leadership. |
| `/exec-email` | Drafts a strategic executive email: context, insights, recommendation, one clear ask. |

### Engineering

| Skill | What it does |
|---|---|
| `/review` | Pre-merge code review. Flags bugs, logic errors, security issues, and pattern violations. |
| `/qa` | Runs Playwright browser tests, finds bugs, fixes them, loops until clean. |
| `/ship` | Bumps version, updates changelog, commits, pushes, and opens a pull request. |
| `/investigate` | Systematic root cause debugging: investigate, analyse, hypothesise, then fix. |

### Maintenance

| Skill | What it does |
|---|---|
| `/tstack-upgrade` | Pulls the latest skills from GitHub. |

---

## Global conventions

All skills follow a shared set of conventions defined in `agents.md`:

- British English throughout.
- No dashes; commas, semicolons, or periods instead.
- Simple, direct language.
- Senior product manager tone.
- No invented data or speculative metrics.

---

## How it works

Each skill lives in its own folder following the native Claude Code convention: `skills/<skill-name>/SKILL.md`. Each `SKILL.md` has YAML frontmatter with the skill name and description, followed by the prompt instructions. When you type `/skill-name` in Claude Code, it reads the corresponding `SKILL.md` and follows those instructions.

---

## Adding new skills

1. Create `skills/your-skill-name/SKILL.md` with frontmatter (`name`, `description`) and instructions.
2. Add an entry to the skills list in `CLAUDE.md`.
3. Commit and push. Run `/tstack-upgrade` on any other machine to get the update.

---

## Acknowledgements

Shameless name rip off from Garry Tan's [gstack](https://github.com/garrytan/gstack), but made for my workflow. The skill content, frameworks, and conventions are my own.
