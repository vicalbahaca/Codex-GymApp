param(
    [string]$SourceDirectory = (Split-Path -Parent $PSScriptRoot),
    [Parameter(Mandatory = $true)][string]$OutputDirectory
)

$ErrorActionPreference = 'Stop'
$source = (Resolve-Path -LiteralPath $SourceDirectory).Path
$manifest = Get-Content -LiteralPath (Join-Path $source 'plugin.json') -Raw | ConvertFrom-Json
if ($manifest.'$schema' -ne 'https://agent-plugins.org/schemas/1.0.0/plugin.schema.json') { throw 'Invalid manifest schema.' }
if ($manifest.name -notmatch '^[a-z0-9]+(?:-[a-z0-9]+)*$' -or $manifest.name.Length -gt 64) { throw 'Invalid plugin name.' }
if ($manifest.version -notmatch '^\d+\.\d+\.\d+$') { throw 'Expected a stable semantic version.' }
if ($manifest.extensions.'com.openai'.interface.shortDescription.Length -gt 30) { throw 'Plugin subtitle exceeds 30 characters.' }
$skillText = Get-Content -LiteralPath (Join-Path $source 'SKILL.md') -Raw
if ($skillText -notmatch ('(?m)^name: ' + [regex]::Escape($manifest.name) + '\r?$')) { throw 'Skill and plugin names must match.' }
if ($skillText -notmatch ('(?m)^  version: "' + [regex]::Escape($manifest.version) + '"\r?$')) { throw 'Skill and plugin versions must match.' }

$output = [IO.Path]::GetFullPath($OutputDirectory)
if ($output.TrimEnd('\') -eq $source.TrimEnd('\') -or $output.StartsWith($source.TrimEnd('\') + '\', [StringComparison]::OrdinalIgnoreCase)) { throw 'Output must be outside the source directory.' }
New-Item -ItemType Directory -Path $output -Force | Out-Null
$packagePath = Join-Path $output ($manifest.name + '-' + $manifest.version + '-' + [guid]::NewGuid().ToString('N'))
$skillPath = Join-Path $packagePath ('skills\' + $manifest.name)
New-Item -ItemType Directory -Path $skillPath -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $source 'plugin.json') -Destination $packagePath
Copy-Item -LiteralPath (Join-Path $source 'SKILL.md') -Destination $skillPath
foreach ($component in @('agents', 'references')) {
    $componentPath = Join-Path $source $component
    if (Test-Path -LiteralPath $componentPath) {
        if (Get-ChildItem -LiteralPath $componentPath -Force -Recurse | Where-Object { $_.Attributes -band [IO.FileAttributes]::ReparsePoint }) { throw 'Linked files are not allowed in packages.' }
        Copy-Item -LiteralPath $componentPath -Destination $skillPath -Recurse
    }
}
$archivePath = $packagePath + '.zip'
Compress-Archive -Path (Join-Path $packagePath '*') -DestinationPath $archivePath
Write-Output $archivePath
