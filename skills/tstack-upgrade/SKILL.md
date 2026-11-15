---
name: tstack-upgrade
description: Update tstack through its existing plugin or standalone installation.
disable-model-invocation: true
---

# Update tstack

Identify the installation supplying this skill. If the path or host is unclear, check the installed plugins or ask the user which installation to update. Use the matching route below. Stop if a command fails and report the error.

## Codex plugin

```text
codex plugin marketplace upgrade tstack
codex plugin add tstack@tstack
codex plugin list --marketplace tstack --json
```

Verify that `tstack@tstack` is installed and enabled. Report its version and ask the user to start a fresh session to pick up the updated skills.

## Claude Code plugin

```text
claude plugin marketplace update tstack
claude plugin update tstack@tstack
claude plugin list --json
```

Verify that `tstack@tstack` is installed and enabled. Report its version and ask the user to start a fresh Claude Code session.

## Standalone skills

Check that tstack is installed in the user skills directory and that the current host has no `tstack@tstack` plugin. Use the matching platform installer only for this route.

On macOS, Linux, or Git Bash, run `./setup` from the tstack checkout. On Windows PowerShell, run `./setup.ps1` from that checkout. The usual checkout is `~/.tstack`. If it is missing, use the standalone installation instructions in the public [tstack README](https://github.com/tibi-iorga/tstack#standalone-agent-skills).

Verify the installer reported success. Tell the user which directories it updated and ask them to start a fresh session.
