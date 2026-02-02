<#
PowerShell script to convert JPG/JPEG/PNG images to WebP.
Requires either ImageMagick (magick) or Google cwebp installed and in PATH.
Usage: Run this script from the repository root: .\scripts\convert-to-webp.ps1
#>

$root = Join-Path -Path $PSScriptRoot -ChildPath ".."
Set-Location -Path $root

Write-Host "Starting WebP conversion in $((Get-Location).Path)" -ForegroundColor Cyan

# Find tool
$useMagick = $false
$useCwebp = $false
try { & magick -version > $null 2>&1; $useMagick = $true } catch {}
try { & cwebp -version > $null 2>&1; $useCwebp = $true } catch {}

if (-not ($useMagick -or $useCwebp)) {
  Write-Host "Neither 'magick' nor 'cwebp' was found in PATH. Install ImageMagick or libwebp (cwebp) to run conversions." -ForegroundColor Yellow
  exit 1
}

$pattern = "*.jpg","*.jpeg","*.png"

Get-ChildItem -Path "assets/img" -Recurse -Include $pattern | ForEach-Object {
  $src = $_.FullName
  $dest = Join-Path $_.DirectoryName ([System.IO.Path]::GetFileNameWithoutExtension($_.Name) + ".webp")
  if (Test-Path $dest) {
    Write-Host "Skipping existing: $dest" -ForegroundColor DarkGray
    return
  }

  Write-Host "Converting: $src -> $dest"
  if ($useMagick) {
    magick "$src" -quality 80 "$dest"
  } elseif ($useCwebp) {
    cwebp -q 80 "$src" -o "$dest" | Out-Null
  }
}

Write-Host "Conversion complete. Review generated .webp files in assets/img and assets/img/hero." -ForegroundColor Green
