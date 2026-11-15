# tstack

Product judgement and stakeholder communication for engineers.

Skills for questioning requests, explaining trade-offs, making the case for technical work, and showing whether what you shipped helped.

Designed to complement [Matt Pocock's engineering skills](https://github.com/mattpocock/skills), supporting the conversations and decisions around the code.

## When to use it

| Situation | Skills |
|---|---|
| You want to understand whether a request solves a real problem. | `/grill-the-problem`, `/sowhat` |
| You need to explain a proposal or challenge its assumptions. | `/1pager`, `/pm-review` |
| You need to make the case for an investment. | `/money-stories`, `/exec-email` |
| You are preparing for a consequential stakeholder meeting. | `/pressure-test` |
| You need to define success or explain results after shipping. | `/instrumentation`, `/impact-story`, `/release-notes` |
| You are examining AI competition or automation opportunities. | `/ai-moat`, `/ooda` |

Each skill is a structured method packaged as an [Agent Skill](https://agentskills.io). Invoke it in your agent with the relevant context, such as a proposal, feature description, meeting notes, or survey results.

The library contains **12 thinking and communication skills, plus one update utility**.

## Setup

### Codex

```text
codex plugin marketplace add tibi-iorga/tstack
codex plugin add tstack@tstack
```

### Claude Code

```text
claude plugin marketplace add tibi-iorga/tstack
claude plugin install tstack@tstack
```

Start a fresh session and check the skill picker for `tstack:money-stories`. If you previously ran the standalone installer, archive those copies after verifying the plugin. Keep one installation method per assistant.

### Standalone Agent Skills

For tools that use standalone Agent Skills, clone the repository and run its setup script.

macOS, Linux, or Git Bash:

```bash
git clone https://github.com/tibi-iorga/tstack.git ~/.tstack && cd ~/.tstack && ./setup
```

Windows PowerShell:

```powershell
git clone https://github.com/tibi-iorga/tstack.git "$HOME/.tstack"; Set-Location "$HOME/.tstack"; ./setup.ps1
```

The standalone scripts install into `~/.agents/skills/` and the assistant folders they find. Use the plugin commands above for a plugin installation.

### Updates

Run the `tstack-upgrade` skill to update through your existing installation method.

## Skills

### Product judgement

| Skill | What it does |
|---|---|
| [`/grill-the-problem`](skills/grill-the-problem/SKILL.md) | Clarifies whose problem it is, when it occurs, and what it costs. |
| [`/1pager`](skills/1pager/SKILL.md) | Structures a proposal around the problem, hypothesis, goals, scope, and risks. |
| [`/sowhat`](skills/sowhat/SKILL.md) | Traces an observation through successive consequences towards a decision or action. |
| [`/pm-review`](skills/pm-review/SKILL.md) | Reviews a PRD through engineering feasibility, business value, and user research perspectives. |
| [`/instrumentation`](skills/instrumentation/SKILL.md) | Builds a metric tree connecting business outcomes, processes, product outcomes, and measures. |

### Stakeholder communication

| Skill | What it does |
|---|---|
| [`/money-stories`](skills/money-stories/SKILL.md) | Builds a simple business case using two known numbers and one labelled estimate. |
| [`/pressure-test`](skills/pressure-test/SKILL.md) | Prepares a decision meeting by examining the ask, decision-maker, objections, and presentation structure. |
| [`/exec-email`](skills/exec-email/SKILL.md) | Drafts an executive email with context, insights, a recommendation, and one clear ask. |
| [`/impact-story`](skills/impact-story/SKILL.md) | Turns survey results and usage metrics into an internal impact summary with evidence and caveats. |
| [`/release-notes`](skills/release-notes/SKILL.md) | Explains customer capabilities, benefits, limitations, availability, and how to get started. |

### AI strategy

| Skill | What it does |
|---|---|
| [`/ai-moat`](skills/ai-moat/SKILL.md) | Examines defensibility under a scenario where AI sharply reduces software building costs. |
| [`/ooda`](skills/ooda/SKILL.md) | Decomposes a workflow into observation, orientation, decision, and action to examine automation and human responsibilities. |

### Maintenance

| Skill | What it does |
|---|---|
| [`/tstack-upgrade`](skills/tstack-upgrade/SKILL.md) | Updates tstack through its existing installation method. |

## License

MIT. See [LICENSE](LICENSE). The adapted `grill-the-problem` skill includes its [original licence](skills/grill-the-problem/LICENSE).
