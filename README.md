# Neon Nexus Dim - Cyberpunk Linux Desktop Theme

```
███╗   ██╗███████╗ ██████╗ ███╗   ██╗    ███╗   ██╗███████╗██╗  ██╗██╗   ██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗████╗  ██║    ████╗  ██║██╔════╝╚██╗██╔╝██║   ██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██╔██╗ ██║    ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║██║╚██╗██║    ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝██║ ╚████║    ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝
```

A comprehensive cyberpunk-themed Linux desktop environment featuring **dim neon aesthetics**, floating modules, and futuristic animations. This theme provides a cohesive visual experience across all desktop components with subdued colors that are easy on the eyes while maintaining the cyberpunk aesthetic.

**Neon Nexus Dim** is designed for users who want the cyberpunk look without the eye strain of overly bright neon colors. All components use carefully selected dimmed variants of classic cyberpunk colors.

## 🎨 Theme Overview

**Neon Nexus Dim** brings a sophisticated cyberpunk aesthetic to your Linux desktop with:

- **Dark Foundation**: Primary background `#1a1a1a` with strategic transparency
- **Dim Neon Accents**: Subtle colored highlights that don't overwhelm
- **Floating Design**: Individual components with rounded corners and spacing
- **Sharp Borders**: Crisp lines without blur for clean definition
- **Smooth Animations**: Fast, responsive transitions with cyberpunk timing curves

## 🌈 Color Palette

The **Dim** variant uses carefully selected muted colors that maintain the cyberpunk aesthetic while being easier on the eyes.

| Color | Bright Version | Dim Version | Usage |
|-------|----------------|-------------|--------|
| **Primary Orange** | `#ff6600` | `#cc5200` | Main accents, active states, cursor |
| **Electric Yellow** | `#ffd700` | `#ccac00` | Clock, charging indicators, time |
| **Neon Green** | `#00ff00` | `#00cc00` | Battery, success states, git clean |
| **Electric Pink** | `#ff1493` | `#cc1174` | Memory, critical alerts, errors |
| **Cyber Blue** | `#00bfff` | `#0099cc` | Network, connectivity, links |
| **Cyan** | `#00ffff` | `#00cccc` | Power controls, special elements |
| **Music Green** | `#66cc99` | `#66cc99` | Media players, audio (unchanged) |
| **Text White** | `#ffffff` | `#e0e0e0` | Primary text, slightly dimmed |

## 🖥️ Components

### ✅ Fully Themed
- **[Hyprland](configs/hypr/)** - Window manager with cyberpunk borders and animations
- **[Waybar](configs/waybar/)** - Status bar with floating modules and dim neon accents
- **[Mako](configs/mako/)** - Notification daemon with urgency-based theming
- **[Wofi](configs/wofi/)** - Application launcher with floating design and subtle glow
- **[Zsh](configs/zsh/)** - Shell with custom "neon-nexus-dim" Oh My Zsh theme
- **[Kitty](configs/kitty/)** - Terminal emulator with complete dim color palette
- **[Firefox](configs/firefox/)** - Browser UI theme with userChrome.css customization

### 🎯 Features
- **Window Borders**: App-specific colored borders matching component functions
- **Animations**: Custom bezier curves (`cyberpunk`, `neon`, `electric`, `glitch`)
- **Transparency**: Strategic opacity for depth without compromising readability
- **Typography**: Fira Code font family for futuristic monospace aesthetic

## 📁 Repository Structure

```
neon-nexus-dim/
├── configs/           # Symlinked configuration directories
│   ├── hypr/         # Hyprland window manager config
│   ├── waybar/       # Status bar configuration and CSS
│   ├── mako/         # Notification daemon config
│   ├── wofi/         # Application launcher config and theme
│   ├── zsh/          # Zsh shell and custom theme
│   ├── kitty/        # Terminal emulator theme
│   └── firefox/      # Browser UI customization
├── scripts/          # Installation and utility scripts
├── screenshots/      # Theme preview images
├── docs/            # Additional documentation
├── README.md        # This file
└── install.sh       # Automated installation script
```

## ⚡ Quick Installation

### Prerequisites
- Arch Linux (or compatible distribution)
- Hyprland window manager
- Waybar status bar
- Mako notification daemon
- Wofi application launcher
- Zsh shell with Oh My Zsh

### Installation
```bash
git clone https://github.com/yourusername/neon-nexus-dim.git
cd neon-nexus-dim
chmod +x install.sh
./install.sh
```

### Manual Installation
```bash
# Backup existing configs
mkdir -p ~/.config/backup
cp -r ~/.config/{hypr,waybar,mako} ~/.config/backup/

# Install theme configs
cp -r configs/hypr ~/.config/
cp -r configs/waybar ~/.config/
cp -r configs/mako ~/.config/
cp -r configs/wofi ~/.config/

# Install zsh theme
cp configs/zsh/zshrc ~/.zshrc
cp configs/zsh/neon-nexus.zsh-theme ~/.oh-my-zsh/themes/

# Reload services
hyprctl reload
pkill waybar && waybar &
pkill mako && mako &
```

## 🎮 Application-Specific Theming

| Application | Border Color | Purpose |
|-------------|-------------|---------|
| **Kitty** | Yellow/Orange | Terminal emulator |
| **Firefox** | Blue | Web browser |
| **Spotify** | Green | Music streaming |
| **Discord** | Pink | Communication |
| **Dolphin** | Orange | File manager |
| **Floating** | Cyan | Popup windows |

## 🔧 Customization

### Border Colors
Edit `configs/hypr/hyprland.conf`:
```conf
# Main border colors
col.active_border = rgba(ff660040) rgba(ffd70040) 45deg
col.inactive_border = rgba(1a1a1a60)

# App-specific borders
windowrulev2 = bordercolor rgba(ffd70040) rgba(ff660040), class:^(kitty)$
```

### Waybar Colors
Edit `configs/waybar/style.css`:
```css
#cpu {
    background: rgba(255, 102, 0, 0.15);
    color: #ff6600;
    border: 1px solid rgba(255, 102, 0, 0.5);
}
```

### Animation Timing
Edit animation durations in `configs/hypr/hyprland.conf`:
```conf
animation = windows, 1, 3, cyberpunk, slide
animation = workspaces, 1, 4, cyberpunk, slide
```

## 📸 Screenshots

*Screenshots will be added to the `screenshots/` directory*

## 🚀 Future Roadmap

### Planned Components
- **Kitty** - Terminal with matching color scheme
- **Wofi/Rofi** - Application launcher theming
- **GTK/Qt** - System-wide application theming
- **Plymouth** - Boot splash screen
- **SDDM** - Login manager theme

### Enhancement Ideas
- Dynamic wallpaper integration
- Audio visualizer (Cava) integration
- Custom icon themes
- Cursor themes
- Firefox user CSS

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Guidelines
- Follow the established color palette
- Maintain the floating/rounded design language
- Test all changes thoroughly
- Update documentation as needed

## 📊 Project Stats

- **Total Components**: 7 fully themed applications
- **Color Variants**: Bright and Dim versions available
- **Installation Time**: ~5 minutes with automated script
- **Compatibility**: Arch Linux, Manjaro, EndeavourOS (and other Arch-based distros)

## 🎯 Philosophy

**Neon Nexus Dim** follows the principle that a great theme should:
- **Enhance productivity** without causing eye strain
- **Maintain consistency** across all applications
- **Provide flexibility** for user customization
- **Be maintainable** with clear documentation

## 🔄 Version History

- **v1.0** - Initial release with Dim color palette
- Complete theme coverage for desktop environment
- Automated installation and customization scripts

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🌟 Support

If you find this theme useful:
- ⭐ Star this repository
- 🐛 Report issues or suggest improvements
- 🔄 Share with the community
- 📝 Contribute additional components or variants

## 🙏 Acknowledgments

- **Hyprland** - Modern Wayland compositor
- **Waybar** - Highly customizable status bar
- **Mako** - Lightweight notification daemon
- **Fira Code** - Monospaced font with programming ligatures

## 💡 Inspiration

Inspired by cyberpunk aesthetics, neon-lit cityscapes, and the desire for a cohesive, futuristic Linux desktop experience that doesn't sacrifice usability for style.

---

✨ *Vibe coded by [Claude Code](https://claude.ai/code)* ✨

*Created with ❤️ for the Linux community*