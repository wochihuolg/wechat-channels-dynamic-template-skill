param(
    [Parameter(Mandatory = $true)]
    [string]$RepoUrl
)

$ErrorActionPreference = "Stop"

if (-not $env:GITHUB_TOKEN) {
    throw "Missing GITHUB_TOKEN environment variable."
}

$repoPath = Split-Path -Parent $MyInvocation.MyCommand.Path

git -C $repoPath remote remove origin 2>$null
git -C $repoPath remote add origin $RepoUrl

$tokenUrl = $RepoUrl -replace "^https://", ("https://x-access-token:{0}@" -f $env:GITHUB_TOKEN)

git -C $repoPath push -u $tokenUrl master
