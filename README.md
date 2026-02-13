# Personal Website

Minimalist technical site built with Jekyll. Focused on engineering leadership, architecture, and AI.

## 🚀 Quick Start

### Prerequisites

- Ruby 3.0+ ([installation guide](https://www.ruby-lang.org/en/documentation/installation/))
- Bundler (`gem install bundler`)

### Local Development

1. **Install dependencies:**
   ```bash
   bundle install
   ```

2. **Run development server:**
   ```bash
   bundle exec jekyll serve
   ```

3. **View site:**
   Open [http://localhost:4000](http://localhost:4000)

The site will auto-reload when you make changes.

### Build for Production

```bash
bundle exec jekyll build
```

Output will be in `_site/` directory.

## 📁 Structure

```
.
├── _config.yml          # Site configuration
├── _layouts/            # Page templates
│   ├── default.html     # Base layout
│   └── post.html        # Blog post layout
├── _includes/           # Reusable components
│   ├── head.html        # HTML head with meta tags
│   ├── header.html      # Site navigation
│   └── footer.html      # Site footer
├── _posts/              # Blog posts (YYYY-MM-DD-title.md)
├── assets/
│   └── css/
│       └── style.css    # Main stylesheet
├── index.md             # Homepage
└── blog.md              # Blog archive page
```

## ✍️ Writing Posts

Create a new file in `_posts/` with the format: `YYYY-MM-DD-title.md`

```markdown
---
layout: post
title: "Your Post Title"
date: 2025-02-10
reading_time: 5
---

Your content here...
```

## 🎨 Customization

### Quick Personalization Checklist

Before deploying, update these files:

1. **`_config.yml`** - Your name, email, social links, site URL
2. **`index.md`** - About section (lines 14-28), Tech Stack, Principles
3. **Blog posts in `_posts/`** - Replace demo posts with your own or edit them

### Site Settings

Edit `_config.yml`:

```yaml
title: Your Name
tagline: Your Role
description: Your positioning statement
url: "https://yourdomain.com"

author:
  name: Your Name
  role: Your Role
  email: your@email.com
  telegram: yourusername
  github: yourusername
  linkedin: yourusername
```

### Styling

The site uses a dark theme with CSS variables. Customize colors in `assets/css/style.css`:

```css
:root {
  --color-bg: #0a0a0a;
  --color-text: #e5e5e5;
  --color-accent: #00d4aa;  /* Change accent color here */
}
```

### Fonts

Default fonts are loaded from Google Fonts:
- **Body:** Inter
- **Mono:** JetBrains Mono

Change in `_includes/head.html` if desired.

## 🚢 Deployment

### GitHub Pages

1. **Push to GitHub:**
   ```bash
   git add .
   git commit -m "Initial site"
   git push origin main
   ```

2. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: Deploy from branch `main`
   - Directory: `/ (root)`

3. **Custom domain (optional):**
   - Add CNAME file with your domain
   - Configure DNS:
     ```
     A    @    185.199.108.153
     A    @    185.199.109.153
     A    @    185.199.110.153
     A    @    185.199.111.153
     ```

Site will be live at `https://yourusername.github.io`

### Alternative Hosting

The site is static HTML/CSS. Deploy anywhere:

- **Netlify:** Connect GitHub repo, auto-deploy on push
- **Vercel:** Same as Netlify
- **Cloudflare Pages:** Great performance, free tier
- **Traditional hosting:** Upload `_site/` contents via FTP

## 📝 Content Guidelines

This site is designed for:

- **Blog posts:** Technical writing, architecture decisions, leadership insights

Keep the minimalist aesthetic:

- Clear, direct writing
- No fluff or marketing speak
- Technical depth over breadth
- Real examples and code snippets

## 🛠️ Technical Details

- **Jekyll version:** 4.3+
- **Markdown processor:** kramdown with GFM
- **Syntax highlighting:** Rouge
- **SEO:** jekyll-seo-tag plugin
- **RSS feed:** jekyll-feed plugin
- **No JavaScript required** (except for Google Fonts)
- **Mobile-first responsive design**

## 📄 License

Content is yours. Theme structure is MIT. Do whatever you want with it.

## 🤝 Contributing

Found a bug or have a suggestion? Open an issue or PR.

## 📧 Contact

- Telegram: [@yourtelegram](https://t.me/yourtelegram)
- Email: your@email.com
- GitHub: [@yourusername](https://github.com/yourusername)

---

Built with [Jekyll](https://jekyllrb.com/). Deployed on [GitHub Pages](https://pages.github.com/).
