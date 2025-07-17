# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is **Neon Nexus**, a comprehensive cyberpunk-themed Linux desktop environment repository. It's a configuration package containing themed dotfiles for various Linux desktop applications, designed to provide a cohesive cyberpunk aesthetic with dim neon colors that are easier on the eyes than traditional bright neon themes.

## Project Architecture

### Theme System
- **Design Philosophy**: Cyberpunk aesthetics with dim neon accents, floating modules, dark foundations
- **Color System**: Consistent dim color palette across all applications with strategic transparency
- **Typography**: Fira Code monospace font family for futuristic aesthetic
- **Layout**: Floating design with rounded corners (6-8px radius) and strategic spacing

### Core Color Palette (Dim Variants)
```css
Primary Orange: #cc5200 (main accents, active states)
Electric Yellow: #ccac00 (clock, charging indicators)
Neon Green: #00cc00 (battery, success states)
Electric Pink: #cc1174 (memory, critical alerts)
Cyber Blue: #0099cc (network, connectivity)
Cyan: #00cccc (power controls)
Dark Base: #1a1a1a (backgrounds)
Text White: #e0e0e0 (primary text, dimmed)
```

## Installation and Deployment

### Installation Commands
```bash
# Backup existing configs
mkdir -p ~/.config/backup
cp -r ~/.config/{hypr,waybar,mako} ~/.config/backup/

# Install configurations
cp -r configs/hypr ~/.config/
cp -r configs/waybar ~/.config/
cp -r configs/mako ~/.config/
cp -r configs/wofi ~/.config/

# Install zsh theme
cp configs/zsh/zshrc ~/.zshrc
cp configs/zsh/neon-nexus-dim.zsh-theme ~/.oh-my-zsh/themes/

# Reload services
hyprctl reload
pkill waybar && waybar &
pkill mako && mako &
```

### Service Management Commands
```bash
# Reload Hyprland configuration
hyprctl reload

# Restart Waybar
pkill waybar && waybar &

# Restart Mako notifications
pkill mako && mako &

# Test font installation
fc-list | grep "Fira Code"
```

## Configuration Components

### 1. Hyprland (Window Manager)
- **Location**: `configs/hypr/hyprland.conf`
- **Features**: Custom animations, app-specific border colors, window rules
- **Border Colors**: Active `rgba(ff660040)`, Inactive `rgba(1a1a1a60)`
- **Animations**: Custom bezier curves (`cyberpunk`, `neon`, `electric`)

### 2. Waybar (Status Bar)
- **Location**: `configs/waybar/config.jsonc` and `style.css`
- **Variants**: Regular and emoji versions available
- **Modules**: Color-coded by function (CPU=orange, memory=pink, network=blue)
- **Design**: Floating modules with individual styling and glow effects

### 3. Mako (Notifications)
- **Location**: `configs/mako/config`
- **Features**: Urgency-based theming, app-specific colors, category theming
- **Integration**: Matches Waybar color scheme and typography

### 4. Wofi (Application Launcher)
- **Location**: `configs/wofi/config` and `style.css`
- **Features**: Floating window, neon search, backdrop blur, smooth animations

### 5. Terminal & Shell
- **Kitty**: Complete color scheme in `configs/kitty/kitty.conf`
- **Zsh**: Custom theme `neon-nexus-dim.zsh-theme` with powerline segments

### 6. Firefox Browser
- **Location**: `configs/firefox/`
- **Components**: `userChrome.css`, `user.js`
- **Manual Setup Required**: Requires enabling userChrome support in about:config

### 7. Dolphin File Manager
- **Location**: `configs/dolphin/`
- **Implementation**: Qt5/Qt6 theming via system configuration

## Development Workflow

### Making Changes
1. **Edit Configuration Files**: Modify files in `configs/` directory
2. **Test Changes**: Use reload commands to test without full restart
3. **Color Consistency**: Maintain dim color palette across components
4. **Documentation**: Update README.md and docs/CUSTOMIZATION.md as needed

### Common Customization Tasks
```bash
# Test Waybar changes
pkill waybar && waybar &

# Test Hyprland changes  
hyprctl reload

# Test color changes across components
# Edit configs/waybar/style.css for Waybar colors
# Edit configs/hypr/hyprland.conf for border colors
# Edit configs/mako/config for notification colors
```

### File Structure
```
neon-nexus/
├── configs/           # Main configuration files (symlinked)
│   ├── hypr/         # Hyprland window manager
│   ├── waybar/       # Status bar (config + CSS)
│   ├── mako/         # Notifications
│   ├── wofi/         # App launcher
│   ├── zsh/          # Shell theme
│   ├── kitty/        # Terminal
│   ├── firefox/      # Browser (manual setup)
│   └── dolphin/      # File manager (Qt theming)
├── docs/             # Documentation
├── screenshots/      # Theme previews
└── README.md         # Primary documentation
```

## Theme Guidelines

### Color Usage Consistency
- Use exact hex values from established palette
- Maintain rgba transparency patterns (0.15 for backgrounds, 0.5 for borders)
- Follow app-specific color coding (CPU=orange, memory=pink, etc.)

### Design Language
- Floating modules with 6-8px rounded corners
- Dark base colors with strategic neon accents
- Smooth animations using custom bezier curves
- Monospace fonts (Fira Code primary, fallbacks available)

### Performance Considerations
- Use hardware acceleration where available
- Optimize animation durations for responsiveness
- Maintain readability with opacity values above 0.8

## Dependencies

### Required
- Hyprland (window manager)
- Waybar (status bar)
- Mako (notification daemon)

### Recommended
- Kitty (terminal emulator)
- Wofi (application launcher)
- Zsh + Oh My Zsh (shell)
- Fira Code font

### Optional
- Firefox (browser theming)
- Dolphin (file manager theming)
- qt5ct/qt6ct (Qt application theming)

## No Traditional Build System

This repository uses simple file copying rather than complex build processes. There are no:
- `package.json` or Node.js dependencies
- `Makefile` or compilation steps
- Container configurations
- Automated testing frameworks

Changes are applied by copying configuration files and reloading services.