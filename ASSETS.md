Asset maintenance notes

**Favicon**: Consider creating a `favicon.ico` file from `assets/img/logo.png` for better browser recognition. Alternatively, link to `logo.png` as shown in the HTML head tags.

- Renamed images to safe, lowercase hyphenated filenames so they work well across platforms.
- Added `scripts/convert-to-webp.ps1` — a PowerShell script to convert images to WebP using ImageMagick (`magick`) or `cwebp` if installed.
- To convert images:
  1. Install ImageMagick or libwebp (`cwebp`) and ensure it's in PATH.
  2. Run from repository root in PowerShell:
     .\scripts\convert-to-webp.ps1
- After conversion, update references to use `.webp` via `<picture>`/`srcset` for best performance — optional next step.
- Duplicate file note: `assets/img/logo.png` already exists. Consider removing `assets/img/logo.jpg` if not needed.
