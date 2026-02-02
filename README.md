# Architect Studio

A modern, responsive architecture portfolio website showcasing residential, commercial, and sustainable design projects. Built with Bootstrap 5, featuring dynamic portfolio galleries, SEO optimization, and accessibility-first design.

**Live Site:** [architectstudio.ke](https://architectstudio.ke)  
**Location:** Nairobi, Kenya

---

## Features

### Core Functionality
- **Hero Carousel** — 5 rotating slides with dynamic content and CTAs
- **Portfolio Gallery** — 8 featured projects with filtering (residential, commercial, interior, urban)
- **Dynamic Project Modal** — Click-to-expand project details with photos, metadata, and features
- **Image Gallery** — Complete gallery view of all 15+ images across the site
- **Services Overview** — Residential, commercial, interior design, and urban planning services
- **Blog/Insights** — 6 featured articles on architecture trends and design philosophy
- **Contact Form** — Email inquiry form with validation
- **Responsive Design** — Mobile-first approach, works on all devices (320px–4K+)

### Technical Features
- **SEO Optimized** — Meta descriptions, Open Graph tags, JSON-LD structured data, sitemap.xml, robots.txt
- **Accessibility** — ARIA labels, semantic HTML, skip-links, keyboard navigation
- **Performance** — Lazy-loaded images, aspect-ratio CSS to prevent layout shift (CLS)
- **Modern Stack** — Bootstrap 5.3.3, Font Awesome 6.5.0, vanilla JavaScript
- **404 Page** — Custom error page with navigation

---

## Project Structure

```
architect/
├── index.html              # Homepage with hero carousel and featured projects
├── portfolio.html          # Full portfolio grid with filtering
├── gallery.html            # Image gallery with modal lightbox
├── services.html           # Service offerings
├── about.html              # Founder bio and credentials
├── blog.html               # Insights and articles
├── contact.html            # Contact form
├── project-detail.html     # Individual project showcase template
├── 404.html                # Error page
├── README.md               # This file
├── ASSETS.md               # Image asset management notes
├── robots.txt              # Search engine crawler rules
├── sitemap.xml             # Site structure for SEO
├── update_files.sh         # Build script (shell)
│
├── assets/
│   ├── css/
│   │   └── style.css       # 1821 lines of custom styling, responsive grid, themes
│   ├── img/
│   │   ├── hero/           # 5 hero carousel images (h1.jpg–h5.jpg)
│   │   ├── logo.png        # Studio logo
│   │   ├── about.jpg       # Founder photo
│   │   ├── project1.jpg–project6.jpg  # Featured project photos
│   │   ├── 4bedroom-hse.jpg, ongoing-project.jpg, unnamed-12.jpg, unnamed-9.jpg
│   │   └── logo.jpg        # Duplicate (optional to remove)
│   └── js/
│       └── script.js       # 511 lines: carousel, portfolio loader, modals, forms
│
├── components/
│   ├── header.html         # Reusable navigation header
│   └── footer.html         # Footer template
│
└── scripts/
    └── convert-to-webp.ps1 # PowerShell script to batch-convert images to WebP
```

---

## Key Improvements (Feb 2026)

### SEO & Meta Tags ✅
- Unique **meta descriptions** on all 7 pages (home, portfolio, gallery, services, about, blog, contact)
- **Open Graph tags** (og:title, og:description, og:image) for social media sharing
- **JSON-LD structured data** for organization and professional services
- **robots.txt** and **sitemap.xml** for search engine crawling
- Improved **image alt text** — descriptive, keyword-rich captions

### Accessibility & UX ✅
- **ARIA labels** on all social media links
- **Skip-link** to main content for keyboard users
- Semantic HTML structure with proper heading hierarchy
- **404 error page** with clear navigation
- **Favicon** reference (logo.png)

### Performance & Responsiveness ✅
- **CSS aspect-ratio** (16:9) on all images to prevent Cumulative Layout Shift
- **Lazy loading** on all images (loading="lazy")
- Mobile-first responsive grid (Bootstrap 5)
- Smooth scroll animations and reveal effects

### Image & Asset Management ✅
- **Renamed files** to safe, hyphenated lowercase (e.g., `4BEDROOM HSE.jpg.jpeg` → `4bedroom-hse.jpg`)
- **All images in use** — 15 images referenced across site (no orphaned files)
- **Gallery page** showcasing all images with clickable modal preview
- **Two new projects added** to reference previously-unused images
- **WebP conversion script** (PowerShell) for future optimization

---

## Pages & Content

| Page | Purpose | Key Features |
|------|---------|--------------|
| **index.html** | Homepage | Hero carousel (5 slides), featured projects, services overview, FAQ, CTA band |
| **portfolio.html** | Project showcase | Grid with filtering (All/Residential/Commercial/Interior/Urban), modal details |
| **gallery.html** | Image gallery | All 15+ images in responsive grid, modal lightbox viewer |
| **services.html** | Service descriptions | Residential, commercial, interiors, urban planning with icons & CTAs |
| **about.html** | Founder bio | Philosophy, credentials, recognition, testimonial |
| **blog.html** | Insights & articles | 6 featured articles on architecture trends and design |
| **contact.html** | Contact form | Name, email, message, phone (validation & submission) |
| **project-detail.html** | Project template | Hero image, description, gallery, metadata, features |
| **404.html** | Error page | Friendly 404 with link back to home |

---

## Technologies Used

### Frontend
- **HTML5** — Semantic markup with accessibility
- **CSS3** — Custom styling (1821 lines), CSS Grid, Flexbox, aspect-ratio, clamp()
- **Bootstrap 5.3.3** — Grid system, components, utilities
- **JavaScript (Vanilla)** — Carousel, modals, portfolio filtering, form handling
- **Font Awesome 6.5.0** — 100+ icons for services, features, CTAs
- **Google Fonts** — Playfair Display (headings), Inter (body)

### Tools & Scripts
- **PowerShell** — Image conversion script (convert-to-webp.ps1)
- **SEO Tools** — robots.txt, sitemap.xml, meta tags
- **Git** — Version control (if using)

---

## Getting Started

### Prerequisites
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Web server or local development server (optional for local testing)

### Local Development

1. **Clone or download** the repository:
   ```bash
   git clone https://github.com/architect-studio/website.git
   cd architect
   ```

2. **Open in browser:**
   - Double-click `index.html` to open directly, or
   - Run a local server:
     ```bash
     python -m http.server 8000
     # Then visit http://localhost:8000
     ```

3. **For WebP conversion** (optional, requires ImageMagick):
   ```powershell
   # Windows PowerShell
   .\scripts\convert-to-webp.ps1
   ```
   See `ASSETS.md` for detailed conversion instructions.

---

## Customization

### Update Studio Information
Edit these files to personalize:
- **Contact info:** `contact.html`, footer (update email, phone)
- **About/bio:** `about.html`, `index.html` (founder section)
- **Social links:** `components/header.html` (Instagram, LinkedIn, Behance URLs)
- **Projects:** `assets/js/script.js` → edit the `projects` array

### Add New Projects
1. Add a new project object to `projects` array in `assets/js/script.js`:
   ```javascript
   {
     id: 9,
     title: "New Project Name",
     location: "City, Country",
     category: "residential|commercial|interior|urban",
     img: "assets/img/new-project.jpg",
     images: ["assets/img/new-project.jpg", ...],
     area: "X,XXX sq.ft.",
     year: "2026",
     type: "Project Type",
     status: "Completed|In Progress",
     description: "Project description...",
     features: ["Feature 1", "Feature 2", ...],
     projectUrl: "/"
   }
   ```
2. Save high-quality JPG/PNG images to `assets/img/`
3. Images will automatically appear in portfolio, gallery, and featured sections

### Update Colors & Branding
Edit CSS variables in `assets/css/style.css` (lines 1–16):
```css
:root {
  --primary: #1a365d;        /* Primary color (dark blue) */
  --accent: #c05621;         /* Accent color (burnt orange) */
  --light: #f8f9fa;          /* Light background */
  --dark: #1a202c;           /* Dark text */
  /* ... more variables ... */
}
```

---

## Screenshots

> **Note:** Add screenshots by replacing placeholder image paths below with actual images.

### 1. Homepage Hero
![Homepage Hero Carousel](docs/screenshots/hero-carousel.png)
- Dynamic 5-slide carousel with rotating CTAs
- Features testimonial, modern architecture, luxury residences, office spaces, sustainable design, coastal living
- Mobile-responsive with smooth transitions

### 2. Portfolio Grid
![Portfolio Grid with Filtering](docs/screenshots/portfolio-grid.png)
- Responsive masonry layout (3 columns on desktop, 1–2 on mobile)
- Filter buttons: All, Residential, Commercial, Interior, Urban Design
- Click cards to open modal with full project details

### 3. Project Modal
![Project Details Modal](docs/screenshots/project-modal.png)
- Full-screen modal with project images, description, metadata
- Shows: location, area, year, type, status, key features
- Close button and escape key to dismiss

### 4. Gallery Page
![Image Gallery](docs/screenshots/gallery-page.png)
- 15+ images in responsive grid (4 columns on desktop)
- Click thumbnail to view full-size in modal
- Includes hero images, projects, and studio photos

### 5. Mobile Responsive
![Mobile Menu](docs/screenshots/mobile-menu.png)
- Hamburger menu navigation
- Touch-friendly buttons and spacing
- Full-width responsive images

### 6. Footer
![Footer with Links](docs/screenshots/footer.png)
- Contact info, quick links, social media
- Newsletter signup form
- Copyright and credits

---

## Browser Support

| Browser | Support | Notes |
|---------|---------|-------|
| Chrome / Edge | ✅ Full | Latest versions |
| Firefox | ✅ Full | Latest versions |
| Safari | ✅ Full | iOS 12+, macOS 10.13+ |
| Mobile Browsers | ✅ Full | iOS Safari, Chrome Mobile, Firefox Mobile |
| IE 11 | ⚠️ Partial | Limited CSS Grid & CSS Variables support |

---

## Performance Metrics

### Lighthouse Scores (Target)
- **Performance:** 85–95
- **Accessibility:** 95–100
- **Best Practices:** 90–100
- **SEO:** 95–100

### Optimizations Applied
- Image lazy loading
- CSS aspect-ratio for CLS prevention
- Minified Bootstrap and Font Awesome
- CDN-hosted fonts and icons
- Mobile-first responsive design

### Future Optimizations
- WebP image conversion (script ready, see `ASSETS.md`)
- `<picture>` elements with WebP fallbacks
- Critical CSS inlining
- Service Worker for offline support
- Preload key fonts

---

## Forms & Functionality

### Contact Form
- **Location:** `contact.html`
- **Fields:** Name, Email, Message, Phone (optional)
- **Validation:** Required fields, email format check
- **Submission:** Currently shows alert (integrate with backend/API)
- **To Enable Email:** Update form action and add backend endpoint

### Newsletter Signup
- **Location:** Footer on all pages
- **Fields:** Email input
- **Validation:** Email format check
- **To Enable:** Update form action and add backend

---

## Deployment

### Deploy to Web Server
1. Upload all files to your web host (via FTP, Git, or control panel)
2. Ensure **robots.txt** and **sitemap.xml** are in root directory
3. Test all links and images on live domain
4. Submit sitemap to Google Search Console

### Environment Variables (If Using Backend)
```
CONTACT_EMAIL=hello@architectstudio.ke
CONTACT_API_URL=https://api.example.com/contact
```

### Recommended Hosting
- **Shared Hosting:** Bluehost, HostGator, SiteGround
- **Cloud:** Netlify, Vercel, AWS S3 + CloudFront
- **Static Site:** GitHub Pages, GitLab Pages
- **Premium:** WP Engine, Kinsta (if upgrading to CMS)

---

## File Size & Assets

| Asset | Size | Count | Notes |
|-------|------|-------|-------|
| HTML Pages | ~50 KB | 9 | Unminified, includes structure + metadata |
| CSS | ~80 KB | 1 | 1821 lines of custom + Bootstrap utility |
| JavaScript | ~25 KB | 1 | 511 lines of custom logic |
| Images (JPG/PNG) | ~5–8 MB | 15 | Hero, projects, gallery, logos |
| Fonts (Google CDN) | ~50 KB | 2 | Playfair Display, Inter (cached) |
| **Total** | ~5.2–5.5 MB | — | Mostly images; will reduce with WebP |

---

## SEO Checklist

- ✅ Meta descriptions on all pages
- ✅ Open Graph tags for social sharing
- ✅ JSON-LD structured data (organization, services)
- ✅ robots.txt and sitemap.xml
- ✅ Descriptive image alt text
- ✅ Mobile-responsive design
- ✅ Fast page load (lazy images, CDN assets)
- ✅ Proper heading hierarchy (H1 per page)
- ✅ SSL/HTTPS ready (enable on host)
- ⏳ Google Search Console submission (add after deployment)

---

## Image Management

### Current Images
- **Hero images (5):** `hero/h1.jpg`, `hero/h2.jpg`, `hero/h3.jpg`, `hero/h4.jpg`, `hero/h5.jpg`
- **Projects (6):** `project1.jpg` through `project6.jpg`
- **Studio images (4):** `about.jpg`, `4bedroom-hse.jpg`, `ongoing-project.jpg`, `unnamed-12.jpg`, `unnamed-9.jpg`
- **Logo (2):** `logo.png`, `logo.jpg` (duplicate, optional to remove)

### Adding New Images
1. Save images as JPG/PNG to `assets/img/`
2. Use descriptive, lowercase, hyphenated filenames (e.g., `beachfront-villa.jpg`)
3. Ensure images are at least 1200px wide
4. Add `alt` attribute with descriptive text
5. (Optional) Convert to WebP using `scripts/convert-to-webp.ps1`

### Image Optimization (Future)
See `ASSETS.md` for WebP conversion instructions. Once WebP files are generated, update HTML to use `<picture>` elements:
```html
<picture>
  <source srcset="image.webp" type="image/webp">
  <img src="image.jpg" alt="Description" loading="lazy">
</picture>
```

---

## Troubleshooting

### Images Not Loading on Portfolio
**Issue:** Portfolio page shows empty grid.  
**Solution:** Ensure `assets/js/script.js` loads before `</body>`. Check browser console for JS errors.

### Modal Not Opening
**Issue:** Clicking project cards doesn't open details.  
**Solution:** Ensure Bootstrap JS is loaded. Check that `openProjectModal()` function is defined in `script.js`.

### Form Not Submitting
**Issue:** Contact form shows alert but doesn't send email.  
**Solution:** Update `#contact-form` handler in `script.js` with actual API endpoint or backend service.

### Styles Not Applied
**Issue:** Page looks unstyled or broken layout.  
**Solution:** Clear browser cache (Ctrl+Shift+Delete), reload page. Ensure `style.css` path is correct.

### Mobile Menu Not Working
**Issue:** Hamburger menu doesn't expand.  
**Solution:** Ensure Bootstrap JS bundle is loaded before closing `</body>`.

---

## Contributing

To contribute improvements:
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/improvement`)
3. Make changes and test locally
4. Commit with clear messages (`git commit -m "Add feature"`)
5. Push to branch and submit pull request

### Code Standards
- Use semantic HTML (section, article, nav, main)
- Follow BEM naming for CSS classes
- Keep JavaScript functions focused and reusable
- Add comments for complex logic
- Test on mobile (320px, 768px, 1024px, 1440px widths)

---

## License

© 2025–2026 Architect Studio. All rights reserved.

Fonts & Icons:
- **Google Fonts:** Playfair Display, Inter (Open License)
- **Font Awesome:** Free tier license (CC BY 4.0)
- **Bootstrap:** MIT License

---

## Contact & Support

**Email:** hello@architectstudio.ke  
**Phone:** +254 XXX XXX XXX  
**Address:** Bishop Road, Nairobi, Kenya  
**Website:** https://architectstudio.ke

---

## Changelog

### v1.2 (Feb 2, 2026)
- ✅ Added Gallery page with all 15+ images
- ✅ Improved SEO: meta descriptions, OG tags, JSON-LD, sitemap.xml, robots.txt
- ✅ Enhanced accessibility: ARIA labels, improved alt text
- ✅ Fixed portfolio image loading (added JS initialization)
- ✅ Renamed image files to safe, hyphenated format
- ✅ Added CSS aspect-ratio to prevent layout shift
- ✅ Created 404 error page
- ✅ Added favicon reference
- ✅ Added two new projects to use all available images

### v1.1 (Jan 30, 2026)
- Added responsive design improvements
- Enhanced color contrast for accessibility
- Optimized carousel transitions

### v1.0 (2025)
- Initial release
- Core pages: home, portfolio, services, about, blog, contact
- Bootstrap 5 responsive grid
- Hero carousel and project modals

---

## Quick Links

- [Home](index.html)
- [Portfolio](portfolio.html)
- [Gallery](gallery.html)
- [Services](services.html)
- [About](about.html)
- [Blog](blog.html)
- [Contact](contact.html)
- [Sitemap](sitemap.xml)
- [Asset Notes](ASSETS.md)

---

**Last Updated:** February 2, 2026  
**Maintainer:** Amon W.
