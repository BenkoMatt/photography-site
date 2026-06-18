# Grace & Lens — Photography Website

A professional, elegant photography website designed for couples and wedding photography
with a feminine, faith-based aesthetic. Features a full landing page, portfolio with
filtering and lightbox, service packages with pricing, testimonials, contact form,
and a password-protected client gallery for sharing edited photos.

---

## ✨ Features

- **Elegant feminine design** — blush pink, sage green, cream, and gold palette with
  romantic serif typography (Cormorant Garamond + Montserrat)
- **Christian scripture accents** — beautifully styled Bible verses woven throughout
- **Responsive** — looks stunning on phone, tablet, and desktop
- **Portfolio with filtering** — filter by Weddings, Couples, or Details; click to
  view full-size in a lightbox with keyboard navigation
- **Service packages** — three pricing tiers (Couples, Wedding, Elopement) with a
  featured "Most Loved" card
- **Testimonial slider** — auto-rotating client reviews with dot navigation
- **Password-protected client gallery** — clients enter a passcode to view their
  private photos, with slideshow, favorites, download, and share features
- **Contact form** — detailed inquiry form with event type, date, venue, and message
- **Scroll animations** — elements fade in as you scroll for a polished feel
- **SEO-ready** — proper meta tags, semantic HTML, fast loading

---

## 📁 File Structure

```
photography-site/
├── index.html          ← Main landing page (all sections)
├── gallery.html        ← Client gallery page (password-protected)
├── css/
│   └── style.css       ← All styling (colors, fonts, layout, responsive)
├── js/
│   ├── script.js       ← Main page JavaScript (nav, portfolio, lightbox, forms)
│   └── gallery.js      ← Gallery page JavaScript (passcode, slideshow, favorites)
├── images/             ← Put all your photos here
│   └── client-photos/  ← Put client gallery photos here
└── README.md           ← This file
```

---

## 🚀 Quick Start (View the Site)

### Option 1: Just open it
Double-click `index.html` to open in your browser. Everything works except the
contact form submission (which needs a server to actually send emails).

### Option 2: Run a local server (recommended)
This gives you the most realistic preview:

```bash
# Using Python (already on your system)
cd photography-site
python -m http.server 8000

# Then open: http://localhost:8000
```

### Option 3: Deploy to the web
Upload the entire `photography-site` folder to any web host:
- **Netlify** (free): Drag the folder onto https://app.netlify.com/drop
- **Vercel** (free): `npm i -g vercel && vercel` in the folder
- **Your own server**: Upload via FTP/SFTP to your hosting provider

---

## 🎨 Customization Guide

### 1. Replace Placeholder Text

Search for these placeholders in `index.html` and replace with your info:

| Placeholder | What to change |
|---|---|
| `[Your Name]` | Your name (appears in About section and testimonials) |
| `[Your City], [Your State]` | Your location |
| `hello@graceandlens.com` | Your email (appears in contact + footer) |
| `(555) 123-4567` | Your phone number |
| `Grace & Lens` | Your business name (logo, footer, title tag) |

> **Tip:** Use Ctrl+F (or Cmd+F) in your text editor to find each placeholder.

### 2. Change Brand Name / Logo

The logo appears as text "Grace & Lens" in the navbar and footer.
Find and replace `Grace` and `Lens` in both `index.html` and `gallery.html`:

```html
<!-- Look for this pattern in the navbar and footer -->
<a href="#top" class="logo">
    <span class="logo-script">Grace</span>
    <span class="logo-amp">&amp;</span>
    <span class="logo-script">Lens</span>
</a>
```

Also update the `<title>` tag and the footer copyright text.

### 3. Add Your Photos

All photo areas currently show gray placeholder boxes with size recommendations.
Replace them with actual `<img>` tags:

**In the portfolio section** (`index.html`):
```html
<!-- BEFORE (placeholder): -->
<div class="photo-placeholder landscape">
    <span>Wedding Ceremony</span>
    <small>800 × 600px</small>
</div>

<!-- AFTER (your photo): -->
<img src="images/wedding-ceremony.jpg" alt="Wedding ceremony at sunset" loading="lazy">
```

Put your photos in the `images/` folder. Recommended formats: `.jpg` for photos,
`.png` for graphics with transparency. Optimize images to under 200KB each for
fast loading (use https://tinypng.com or https://squoosh.app).

### 4. Change Colors

All colors are defined at the top of `css/style.css` as CSS variables:

```css
:root {
    --blush: #f4e4e1;        /* Main pink */
    --blush-deep: #e8c5c0;   /* Darker pink */
    --pink-rose: #c08a85;    /* Rose accent */
    --sage: #a8c4a2;         /* Green */
    --gold: #d4a574;         /* Gold accent */
    --cream: #faf7f2;        /* Background */
    --charcoal: #3d3535;     /* Text */
}
```

Change any of these hex codes to update the entire site's color scheme instantly.

### 5. Change Fonts

The fonts are loaded from Google Fonts in the `<head>` of both HTML files:

```html
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond...&family=Montserrat..." rel="stylesheet">
```

To use different fonts:
1. Go to https://fonts.google.com and pick your fonts
2. Copy the `<link>` tag Google gives you
3. Replace the existing one in both `index.html` and `gallery.html`
4. Update the `--font-serif` and `--font-sans` variables in `css/style.css`

**Recommended feminine font pairings:**
- Playfair Display + Lato
- Cormorant + Montserrat (current)
- DM Serif Display + DM Sans
- Italiana + Quicksand

### 6. Edit Pricing & Packages

In `index.html`, find the `<!-- SERVICES -->` section. Each package is a
`.package-card` div. Edit the price, features list, and description:

```html
<div class="package-price">
    <span class="currency">$</span>
    <span class="amount">350</span>     <!-- Change price here -->
    <span class="per">starting</span>
</div>
<ul class="package-features">
    <li><span class="check">✓</span> 1 hour session at your chosen location</li>
    <!-- Add or remove <li> items as needed -->
</ul>
```

### 7. Edit Testimonials

In `index.html`, find the `<!-- TESTIMONIALS -->` section. Each testimonial is a
`.testimonial` div. Edit the text, names, and dates:

```html
<div class="testimonial">
    <div class="testimonial-quote-mark">&ldquo;</div>
    <p class="testimonial-text">Your review text here...</p>
    <p class="testimonial-author">
        <strong>Couple's Names</strong>
        <small>Event Type · Year</small>
    </p>
</div>
```

To add more testimonials, copy a `.testimonial` block and add a new `.dot` button
in the `.testimonial-dots` div.

### 8. Change Bible Verses

Verses appear in several places. Search for `verse-mark` or scripture references
like `1 Corinthians 13:4` in `index.html` to find and replace them.

### 9. Edit the Hero Background

The hero section currently uses a gradient. To use a real photo:

In `css/style.css`, find `.hero`:
```css
/* BEFORE: */
.hero {
    background: linear-gradient(135deg, #e8d5d0 0%, #d4c5b8 40%, #c5b8a8 100%);
}

/* AFTER (with photo): */
.hero {
    background: url('../images/hero-bg.jpg') center/cover no-repeat;
}
```

Then uncomment the `.hero::before` dark overlay so text stays readable:
```css
.hero::before {
    content: '';
    position: absolute;
    inset: 0;
    background: rgba(0,0,0,0.35);  /* Darkens the photo for text readability */
}
```

---

## 🔐 Client Gallery Setup

### How the Passcode System Works

1. Client enters a passcode (e.g., `SMITH-0224`) on the homepage or gallery page
2. JavaScript checks the passcode against a list
3. If valid, the gallery content is shown

### Adding a Client Gallery

**Step 1: Add the passcode** in `js/script.js` AND `js/gallery.js`:

```javascript
var GALLERY_CODES = {
    'DEMO-2024': { title: 'Sarah & Michael\'s Wedding', date: 'June 15, 2024' },
    'SAMPLE-001': { title: 'Engagement Session', date: 'March 3, 2024' },
    // Add new clients here:
    'SMITH-0224': { title: 'Smith Wedding Gallery', date: 'February 24, 2025' }
};
```

**Step 2: Add photos** to `gallery.html` in the `.gallery-grid` section:

```html
<div class="gallery-item" data-full="images/client-photos/smith-01.jpg">
    <img src="images/client-photos/smith-01.jpg" alt="First look" loading="lazy">
    <div class="gallery-item-actions">
        <button class="gallery-action" title="Favorite">♡</button>
        <a class="gallery-action" title="Download" download href="images/client-photos/smith-01.jpg">⬇</a>
    </div>
</div>
```

Put the actual photos in `images/client-photos/`.

**Step 3: Send the passcode to your client** (e.g., `SMITH-0224`) via email along
with the gallery link: `yourwebsite.com/gallery.html`

### ⚠️ Security Note

The passcode system uses client-side JavaScript — it's for privacy, not true security.
Anyone who views the source code can see the passcodes. This is fine for keeping
galleries unlisted, but **do not use this for sensitive or private photos**.

**For production-grade security**, connect to a server backend:

1. Create an API endpoint (e.g., `/api/gallery/verify`) that checks passcodes
   server-side and returns the photo list only for valid codes
2. Replace the passcode check in `gallery.js` with a `fetch()` call (example
   code is in the comments at the top of `gallery.js`)
3. Store photos in a protected directory on your server that only the API can access

---

## 📧 Contact Form Setup

The contact form currently shows a success message but doesn't actually send data.
To make it functional, connect it to a form service:

### Option 1: Formspree (easiest, free tier)
1. Sign up at https://formspree.io
2. Create a form and get your form ID
3. In `index.html`, add `action` and `method` to the form:
```html
<form id="contactForm" class="contact-form"
      action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
```
4. In `js/script.js`, replace the form submit handler with:
```javascript
contactForm.addEventListener('submit', function(e) {
    e.preventDefault();
    var formData = new FormData(contactForm);
    fetch(contactForm.action, {
        method: 'POST',
        body: formData,
        headers: { 'Accept': 'application/json' }
    }).then(function() {
        formSuccess.classList.add('show');
        contactForm.reset();
        setTimeout(function() { formSuccess.classList.remove('show'); }, 5000);
    });
});
```

### Option 2: EmailJS (sends directly to your email)
1. Sign up at https://www.emailjs.com
2. Follow their setup guide — they provide a snippet to add to your site

### Option 3: Your own backend
If you have a server, create a POST endpoint at `/api/contact` and send the
form data there using `fetch()`.

---

## 📱 Social Media Links

In `index.html`, find the contact section and footer. Replace `#` placeholders
with your actual social media URLs:

```html
<a href="https://instagram.com/yourhandle">Instagram</a>
<a href="https://facebook.com/yourpage">Facebook</a>
<a href="https://pinterest.com/yourprofile">Pinterest</a>
```

---

## 🖼️ Image Optimization Tips

- **Resize before uploading**: Photos from a camera can be 5-10MB each.
  Resize to the display size (e.g., 1200px wide for portfolio images)
- **Compress**: Use https://tinypng.com or https://squoosh.app to reduce
  file size without visible quality loss
- **Use the right format**: `.jpg` for photos, `.webp` for best compression
  (supported by all modern browsers)
- **Add `loading="lazy"`**: Already included — images load as you scroll,
  making the page much faster

### Recommended Image Sizes

| Location | Size | Aspect Ratio |
|---|---|---|
| Hero background | 1920×1080px | 16:9 |
| About portrait | 800×1000px | 4:5 |
| Portfolio landscape | 800×600px | 4:3 |
| Portfolio portrait | 600×800px | 3:4 |
| Portfolio square | 600×600px | 1:1 |
| Client gallery | 1200×800px | 3:2 |

---

## 🌐 Deploying to Your Server

### Upload via FTP/SFTP
1. Connect to your server using FileZilla, Cyberduck, or your preferred FTP client
2. Upload all files in the `photography-site` folder to your web root
   (usually `public_html/` or `www/` or `htdocs/`)
3. Visit your domain in a browser

### Deploy with Netlify (free, easiest)
1. Go to https://app.netlify.com/drop
2. Drag the `photography-site` folder onto the page
3. You get a live URL instantly — can connect your own domain later

### Deploy with Vercel (free)
```bash
npm i -g vercel
cd photography-site
vercel
```

---

## 🔧 Troubleshooting

**Images not showing?**
- Check that the file path in `src="images/your-photo.jpg"` matches exactly
- File names are case-sensitive on most servers: `Photo.jpg` ≠ `photo.jpg`
- Make sure the image is actually in the `images/` folder

**Fonts not loading?**
- You need an internet connection for Google Fonts
- Check the `<link>` tag in the `<head>` is correct

**Gallery passcode not working?**
- Make sure you added the code in **both** `js/script.js` and `js/gallery.js`
- Passcodes are case-insensitive (automatically uppercased)
- Check for typos in the code

**Contact form not sending?**
- By default it just shows a success message — you need to connect it to
  Formspree, EmailJS, or your own backend (see "Contact Form Setup" above)

---

## ♡ A Note

This website was built with love and prayer. Every section was designed to
reflect the beauty of love stories and the grace of faith. May it serve your
business well and help you capture countless beautiful moments.

*"Let all that you do be done in love." — 1 Corinthians 16:14*

---

**Built for you. Customize freely. 💕**