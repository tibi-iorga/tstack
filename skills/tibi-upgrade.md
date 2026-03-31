# /tibi-upgrade

Update tstack to the latest version from GitHub.

## Process

Run the following:

```bash
cd ~/.claude/skills/tstack && git pull && cp skills/*.md ~/.claude/commands/
```

Report back:
- Whether the update was successful.
- What changed (run `git log --oneline -5` after pulling to show recent updates).
- Any errors encountered.

If the directory does not exist, prompt the user to run the setup script first:

```bash
git clone https://github.com/tibi-iorga/tstack.git ~/.claude/skills/tstack && cd ~/.claude/skills/tstack && ./setup
```
