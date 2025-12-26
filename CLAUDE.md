# Social Media Auto Launcher - Claude Code Reference

This file contains project documentation for the Social Media Auto Launcher tool. Claude Code automatically loads this on startup when working in this repository.

---

## Project Overview

**Social Media Auto Launcher** is a simple Windows batch script utility that opens multiple social media platforms simultaneously in Google Chrome browser.

### Repository Details
- **GitHub URL**: https://github.com/jtgsystems/socialmedia
- **GitHub Pages**: https://jtgsystems.github.io/socialmedia/
- **Maintainer**: JTGSYSTEMS (https://www.jtgsystems.com)
- **License**: Not specified (open source)
- **Primary Branch**: gh-pages
- **Status**: Active legacy project

### Purpose
Quick-launch common social media platforms for social media managers, marketers, and content creators who need to access multiple platforms simultaneously for daily workflow.

---

## Project Structure

```
socialmedia/
├── index.html                    # GitHub Pages landing page
├── params.json                   # GitHub Pages metadata
├── Social Media checkup.bat      # Main batch script launcher
├── banner.png                    # Repository banner (1312x736)
├── stylesheets/
│   ├── github-light.css         # GitHub theme CSS
│   ├── normalize.css            # CSS normalization
│   └── stylesheet.css           # Cayman theme styles
└── .git/                        # Git repository data
```

---

## Core Functionality

### Social Media checkup.bat
**Type**: Windows Batch Script
**Function**: Opens 5 major social media platforms in Chrome

**Platforms Launched**:
1. Facebook (http://facebook.com)
2. Twitter (http://twitter.com)
3. LinkedIn (http://linkedin.com/)
4. Google+ (https://plus.google.com/)
5. Instagram (https://www.instagram.com/)

**Usage**:
```batch
# Windows Command Prompt or double-click
Social Media checkup.bat
```

**Technical Details**:
- Uses Windows `start chrome` command
- Opens each URL in a new Chrome window/tab
- Non-blocking execution (all sites launch simultaneously)
- Requires Chrome to be installed and in PATH

**Note**: Google+ is deprecated (service shut down April 2, 2019). Consider updating this URL to a modern platform.

---

## GitHub Pages Website

### Landing Page (index.html)
- **Framework**: Static HTML with Cayman theme
- **Fonts**: Google Fonts (Open Sans 400/700)
- **Responsive**: Mobile-friendly viewport configuration
- **Theme**: GitHub Cayman theme by Jason Long

### Features
- Project description and tagline
- Download buttons (.zip, .tar.gz)
- GitHub repository link
- Standard GitHub Pages content

### Live Site
Visit: https://jtgsystems.github.io/socialmedia/

---

## Assets

### Banner Image
- **File**: banner.png
- **Dimensions**: 1312 x 736 pixels
- **Format**: PNG (8-bit RGB)
- **Size**: 530KB
- **Purpose**: Repository header/social media preview

### Stylesheets
1. **normalize.css** (7.7KB) - CSS reset/normalization
2. **stylesheet.css** (5.8KB) - Cayman theme styles
3. **github-light.css** (2.7KB) - GitHub syntax highlighting

---

## Development History

### Git Commit Timeline
```
b534c48 - Add repository banner
83a4276 - Update Social Media checkup.bat
fd19a66 - Added files via upload
c07f4f1 - Create gh-pages branch via GitHub
```

### Branch Structure
- **gh-pages**: Main branch (GitHub Pages source)
- **origin/gh-pages**: Remote tracking branch

---

## Use Cases

### Target Users
1. **Social Media Managers**: Quick access to all platforms for daily monitoring
2. **Content Creators**: Simultaneous posting across platforms
3. **Marketing Teams**: Cross-platform campaign management
4. **Community Managers**: Multi-platform engagement monitoring

### Workflow Integration
- Morning routine: Launch all platforms for daily checks
- Campaign deployment: Post to multiple platforms simultaneously
- Crisis management: Monitor all channels at once
- Analytics review: Check insights across platforms

---

## Technical Requirements

### System Requirements
- **OS**: Windows (XP, Vista, 7, 8, 10, 11)
- **Browser**: Google Chrome (must be installed and in PATH)
- **Internet**: Active internet connection

### Browser Compatibility
- Primary: Google Chrome
- Alternative: Modify script for Edge, Firefox, etc.

### Command Structure
```batch
start chrome <URL>
```
- Opens URL in default Chrome profile
- Each command executes asynchronously
- No error handling for missing Chrome installation

---

## Potential Improvements

### Suggested Enhancements
1. **Platform Updates**
   - Remove deprecated Google+ URL
   - Add modern platforms: TikTok, Pinterest, Reddit, YouTube
   - Add emerging platforms: Threads, Bluesky, Mastodon

2. **Cross-Platform Support**
   - Create Linux/macOS version (shell script)
   - Add browser detection (Chrome, Firefox, Edge, Safari)
   - PowerShell version for modern Windows

3. **Configuration**
   - User-configurable platform list
   - Custom URL support
   - Profile selection for Chrome

4. **Error Handling**
   - Check if Chrome is installed
   - Verify internet connectivity
   - Handle missing URLs gracefully

5. **Features**
   - Launch specific profiles per platform
   - Incognito mode option
   - Window positioning/sizing
   - Logging opened platforms

---

## Modernization Ideas

### PowerShell Version
```powershell
# Modern replacement for .bat script
$platforms = @(
    'https://facebook.com',
    'https://twitter.com',
    'https://linkedin.com',
    'https://instagram.com',
    'https://tiktok.com'
)

foreach ($url in $platforms) {
    Start-Process chrome $url
}
```

### Linux/macOS Shell Script
```bash
#!/bin/bash
# Cross-platform launcher

platforms=(
    "https://facebook.com"
    "https://twitter.com"
    "https://linkedin.com"
    "https://instagram.com"
    "https://tiktok.com"
)

for url in "${platforms[@]}"; do
    xdg-open "$url" 2>/dev/null || open "$url" 2>/dev/null
done
```

### Web Version (JavaScript)
```javascript
// Browser extension or bookmarklet
const platforms = [
    'https://facebook.com',
    'https://twitter.com',
    'https://linkedin.com',
    'https://instagram.com',
    'https://tiktok.com'
];

platforms.forEach(url => window.open(url, '_blank'));
```

---

## GitHub Pages Configuration

### params.json Metadata
```json
{
  "name": "Social Media link - Auto launcher",
  "tagline": "Opens common social media URLs in Chrome, all at once",
  "note": "Don't delete this file! Used for page regeneration"
}
```

### Theme: Cayman
- **Designer**: Jason Long (@jasonlong)
- **Source**: https://github.com/jasonlong/cayman-theme
- **Style**: Clean, modern, GitHub-friendly
- **Color Scheme**: Blue gradient header, white content area

---

## Marketing & SEO

### Keywords
- Social media automation
- Bulk URL launcher
- Social media management tool
- Chrome automation script
- Multi-platform launcher

### Target Search Terms
- "open multiple social media sites at once"
- "social media manager tools"
- "batch open social media"
- "chrome social media launcher"

### JTGSYSTEMS Branding
- **Company**: JTGSYSTEMS
- **Website**: https://www.jtgsystems.com
- **GitHub**: https://github.com/jtgsystems
- **Project Portfolio**: Includes this tool as productivity utility

---

## Related Projects

### JTGSYSTEMS Ecosystem
This project is part of the JTGSYSTEMS portfolio, which includes:
- Web development tools
- Automation utilities
- IT management solutions
- Custom software development

### Similar Tools
- Browser extension alternatives
- Desktop applications (TweetDeck, Hootsuite)
- Web-based dashboards (Buffer, Sprout Social)

---

## Deployment

### GitHub Pages Deployment
1. Branch: gh-pages (already configured)
2. Source: Root directory
3. Custom domain: Not configured
4. Status: Active at https://jtgsystems.github.io/socialmedia/

### Local Testing
```bash
# Serve locally (Python)
python -m http.server 8000

# Serve locally (Node.js)
npx http-server

# Visit: http://localhost:8000
```

---

## Maintenance Notes

### Current Status
- Project is functional but dated (Google+ deprecated)
- GitHub Pages site is live and accessible
- Batch script works on modern Windows systems
- No active development or updates

### Recommended Actions
1. Update platform list (remove Google+, add TikTok)
2. Create cross-platform versions (Linux, macOS)
3. Add configuration options
4. Implement error handling
5. Consider browser extension version

### Security Considerations
- No credentials stored (safe)
- No API keys or tokens (safe)
- Opens public URLs only (safe)
- No data collection (privacy-friendly)
- No external dependencies beyond Chrome

---

## Quick Commands

### Clone Repository
```bash
git clone https://github.com/jtgsystems/socialmedia.git
cd socialmedia
```

### Download Latest Release
```bash
# Using GitHub CLI
gh repo clone jtgsystems/socialmedia

# Direct download
wget https://github.com/jtgsystems/socialmedia/archive/refs/heads/gh-pages.zip
```

### Update Script
```bash
# Edit batch file
nano "Social Media checkup.bat"

# Test locally
cmd /c "Social Media checkup.bat"
```

### Push Changes
```bash
git add .
git commit -m "Update: description of changes"
git push origin gh-pages
```

---

## Support & Contact

### JTGSYSTEMS Contact
- **Website**: https://www.jtgsystems.com
- **GitHub**: https://github.com/jtgsystems
- **Issues**: https://github.com/jtgsystems/socialmedia/issues

### Community Support
- GitHub Issues: Report bugs or request features
- GitHub Discussions: Share use cases and ideas
- Pull Requests: Contribute improvements

---

## License & Attribution

### Copyright
- Created by: JTGSYSTEMS
- Maintained by: JTGSYSTEMS
- Year: 2016 (initial commit)

### Third-Party Credits
- **Cayman Theme**: Jason Long (@jasonlong)
- **GitHub Pages**: Automatic page generation system
- **Google Fonts**: Open Sans typeface

### Usage Rights
- Open source (no explicit license file)
- Free for personal and commercial use
- Attribution appreciated but not required

---

## Notes for Claude Code

### When Working on This Project
1. This is a simple legacy utility project
2. Main file is the batch script (Social Media checkup.bat)
3. GitHub Pages site is informational only
4. No credentials or API keys in this repository (safe to share)
5. Consider modernization when making changes

### Suggested Workflow
1. Test batch script modifications in Windows VM
2. Update GitHub Pages content if functionality changes
3. Maintain backward compatibility
4. Document all platform additions/removals

### File Modification Priorities
1. **High Priority**: Social Media checkup.bat (core functionality)
2. **Medium Priority**: index.html (user-facing documentation)
3. **Low Priority**: Stylesheets (visual changes only)

---

## Dependencies

This project has **no package manager dependencies** (no package.json or requirements.txt needed).

### External Dependencies
- **Browser**: Google Chrome (must be in system PATH)
- **Operating System**: Windows (for .bat script execution)
- **Internet**: Active connection required for social media sites

### Web Dependencies (CDN)
- Google Fonts: Open Sans (400, 700 weights)
- External stylesheets loaded via CDN in index.html

### No Build Process
- Static HTML/CSS site (no bundler, no compilation)
- Batch script runs directly (no preprocessing)
- GitHub Pages serves files as-is

---

*Last Updated: 2025-12-26*
*Repository: jtgsystems/socialmedia*
*Branch: gh-pages*
*Claude Code Project Documentation*
