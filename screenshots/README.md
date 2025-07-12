# Neon Nexus Screenshots

This directory contains preview images of the Neon Nexus cyberpunk theme.

## 📸 Planned Screenshots

### Desktop Overview
- [ ] `desktop-overview.png` - Full desktop with multiple windows
- [ ] `desktop-clean.png` - Clean desktop with just wallpaper and waybar

### Waybar Examples
- [ ] `waybar-detail.png` - Close-up of the status bar modules
- [ ] `waybar-hover.png` - Hover effects on modules
- [ ] `waybar-workspaces.png` - Workspace indicators

### Window Management
- [ ] `window-borders.png` - Various application borders
- [ ] `floating-windows.png` - Floating window examples
- [ ] `tiled-layout.png` - Tiled window arrangement

### Notifications
- [ ] `notifications-normal.png` - Standard notifications
- [ ] `notifications-critical.png` - Critical/urgent notifications
- [ ] `notifications-app-specific.png` - App-specific themed notifications

### Applications
- [ ] `terminal-kitty.png` - Kitty terminal with theme
- [ ] `firefox-themed.png` - Firefox with cyberpunk borders
- [ ] `file-manager.png` - Dolphin file manager
- [ ] `launcher-wofi.png` - Wofi application launcher

### Theme Variations
- [ ] `color-comparison.png` - Before/after theme application
- [ ] `animation-demo.gif` - Window animation demonstrations
- [ ] `workspace-switching.gif` - Workspace transition animations

## 📷 How to Contribute Screenshots

1. Take high-quality screenshots (1920x1080 or higher)
2. Use PNG format for static images
3. Use GIF format for animations (keep under 5MB)
4. Name files descriptively
5. Add them to this directory
6. Update the checklist above

## 🎨 Screenshot Guidelines

- Show the theme in realistic usage scenarios
- Include multiple applications when possible
- Demonstrate key features (borders, animations, etc.)
- Use good lighting/contrast for visibility
- Crop appropriately to highlight specific features

## 🛠️ Screenshot Tools

**Linux Screenshot Tools:**
- `grim` - Wayland screenshot utility
- `slurp` - Screen area selection
- `wf-recorder` - Wayland screen recording for GIFs
- `flameshot` - Feature-rich screenshot tool

**Example Commands:**
```bash
# Full screenshot
grim screenshot.png

# Area selection
grim -g "$(slurp)" screenshot.png

# Record GIF
wf-recorder -g "$(slurp)" -f animation.gif
```