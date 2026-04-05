# Aashirwad Gaming - Minecraft Hosting

A modern, responsive landing page for a premium Minecraft server hosting service.

![Minecraft Hosting](https://img.shields.io/badge/Minecraft-Hosting-00d4aa?style=for-the-badge&logo=minecraft)
![Status](https://img.shields.io/badge/status-active-success?style=for-the-badge)

## Features

- Modern, dark-themed UI with gradient accents
- Fully responsive design (mobile, tablet, desktop)
- Smooth scroll animations
- Interactive navigation with mobile hamburger menu
- Pricing plans section
- Contact form
- Animated hero section with floating cubes
- Feature highlights grid

## Tech Stack

- HTML5
- CSS3 (Custom properties, Grid, Flexbox, Animations)
- Vanilla JavaScript (No frameworks required)
- Google Fonts (Inter)

## Quick Start

### Option 1: Open Locally

```bash
# Clone the repository
git clone https://github.com/AASHIRWADGAMINGXD/Aashirwadgamingxd.git
cd Aashirwadgamingxd

# Open in browser
# Windows: start index.html
# macOS: open index.html
# Linux: xdg-open index.html
```

### Option 2: Live Server (VS Code)

1. Install the "Live Server" extension in VS Code
2. Right-click `index.html` and select "Open with Live Server"

### Option 3: Python HTTP Server

```bash
python3 -m http.server 8000
# Visit http://localhost:8000
```

## Project Structure

```
Aashirwadgamingxd/
├── index.html      # Main landing page
├── styles.css      # All styles and animations
├── script.js       # Interactivity and animations
└── README.md       # This file
```

## Customization

### Colors

Edit the CSS variables in `styles.css`:

```css
:root {
    --primary: #00d4aa;      /* Main accent color */
    --primary-dark: #00a885; /* Darker shade */
    --secondary: #7c3aed;    /* Secondary accent */
    --dark: #0f0f0f;         /* Background */
    --dark-light: #1a1a1a;   /* Lighter background */
    --dark-card: #222222;    /* Card background */
}
```

### Pricing Plans

Update the pricing section in `index.html` to change plans and prices.

### Contact Form

The contact form currently shows an alert on submit. To connect it to a backend:

1. Update the form handler in `script.js`
2. Or use a form service like Formspree, Netlify Forms, etc.

## Deployment

### GitHub Pages

1. Go to repository Settings > Pages
2. Select branch: `main` > Save
3. Your site will be live at `https://yourusername.github.io/repo-name`

### Netlify

1. Drag and drop the folder to [Netlify Drop](https://app.netlify.com/drop)
2. Or connect your GitHub repository for automatic deployments

### Vercel

1. Import your GitHub repository
2. Deploy automatically on every push

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## License

MIT License - feel free to use this template for your own projects!

## Contact

- **Email:** support@aashirwadgaming.com
- **Discord:** Join our community server
- **Twitter:** @aashirwadgaming

---

Made with love by Aashirwad Gaming
