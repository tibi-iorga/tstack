# tstack setup for Windows (PowerShell).
# Mirrors ./setup: clones to ~/.tstack, installs skills to the cross-tool
# and tool-specific skills directories, removes old tstack global imports.

$ErrorActionPreference = "Stop"

$RepoUrl = "https://github.com/tibi-iorga/tstack.git"
$TstackDir = if ($env:TSTACK_DIR) { $env:TSTACK_DIR } else { Join-Path $HOME ".tstack" }
$OldDir = Join-Path $HOME ".claude\skills\tstack"
$ClaudeMd = Join-Path $HOME ".claude\CLAUDE.md"
$ImportLine = "@~/.tstack/CLAUDE.md"
$OldImportLine = "@~/.claude/skills/tstack/CLAUDE.md"

Write-Host ""
Write-Host "tstack setup"
Write-Host "------------"

if (Test-Path (Join-Path $TstackDir ".git")) {
    Write-Host "Updating tstack..."
    git -C $TstackDir pull
} else {
    # Older versions used ~/.tstack as an update-check cache directory.
    # Move any non-repo directory aside so the clone can proceed.
    if (Test-Path $TstackDir) {
        $backup = "$TstackDir.bak-$([DateTimeOffset]::Now.ToUnixTimeSeconds())"
        Move-Item $TstackDir $backup
        Write-Host "Moved existing non-repo $TstackDir aside"
    }
    Write-Host "Installing tstack to $TstackDir..."
    git clone $RepoUrl $TstackDir
}

function Install-Skills($Target) {
    New-Item -ItemType Directory -Force -Path $Target | Out-Null
    $count = 0
    foreach ($skill in Get-ChildItem -Directory (Join-Path $TstackDir "skills")) {
        $dest = Join-Path $Target $skill.Name
        New-Item -ItemType Directory -Force -Path $dest | Out-Null
        Copy-Item -Recurse -Force (Join-Path $skill.FullName "*") $dest
        $count++
    }
    Write-Host "Installed $count skills to $Target"
}

# Canonical cross-tool location (Agent Skills standard, read by Cursor and others)
Install-Skills (Join-Path $HOME ".agents\skills")

# Tool-specific locations, only where the tool is present
if (Test-Path (Join-Path $HOME ".claude")) { Install-Skills (Join-Path $HOME ".claude\skills") }
if (Test-Path (Join-Path $HOME ".codex"))  { Install-Skills (Join-Path $HOME ".codex\skills") }

# Remove only the global imports previously installed by tstack.
if (Test-Path -LiteralPath $ClaudeMd -PathType Leaf) {
    $content = [IO.File]::ReadAllText($ClaudeMd)
    $pattern = '(?m)^(?:' + [regex]::Escape($ImportLine) + '|' + [regex]::Escape($OldImportLine) + ')\r?(?:\n|$)'
    $cleaned = [regex]::Replace($content, $pattern, '')
    if ($cleaned -cne $content) {
        # Preserve the existing encoding, BOM, line endings and final newline.
        $reader = [IO.StreamReader]::new($ClaudeMd, [Text.Encoding]::UTF8, $true)
        try {
            $null = $reader.Peek()
            $encoding = $reader.CurrentEncoding
        } finally {
            $reader.Dispose()
        }
        $bytes = [IO.File]::ReadAllBytes($ClaudeMd)
        if ($encoding.CodePage -eq 65001) {
            $hasBom = $bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191
            $encoding = [Text.UTF8Encoding]::new($hasBom)
        }
        [IO.File]::WriteAllText($ClaudeMd, $cleaned, $encoding)
        Write-Host "Removed tstack global imports from ~/.claude/CLAUDE.md"
    }
}

Write-Host ""
Write-Host "Done. Restart your agent (Claude Code, Cursor, Codex) to pick up the skills."
Write-Host ""

# Remove the old install location so skills are not registered twice
if (Test-Path $OldDir) {
    if ((Get-Location).Path.StartsWith($OldDir)) {
        Write-Host "Old install detected at ~/.claude/skills/tstack and it is your current directory."
        Write-Host "Remove it manually to avoid duplicate skills: Remove-Item -Recurse -Force `"$OldDir`""
    } else {
        try {
            Remove-Item -Recurse -Force $OldDir
            Write-Host "Removed old install at ~/.claude/skills/tstack"
        } catch {
            Write-Host "Could not remove old install. Remove it manually: Remove-Item -Recurse -Force `"$OldDir`""
        }
    }
}
