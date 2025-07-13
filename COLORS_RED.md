# Neon Nexus Red - Cyberpunk 2077 Terminal Color Scheme

This document contains the complete red color palette inspired by Cyberpunk 2077's terminal and hacking interfaces for potential integration into the main Neon Nexus theme system.

## 🎮 Color Palette

Based on authentic Cyberpunk 2077 terminal interface colors:

| Color | Hex Code | RGB Values | Cyberpunk 2077 Reference | Usage |
|-------|----------|------------|---------------------------|-------|
| **Terminal Red** | `#ff4a57` | `rgb(255, 74, 87)` | Main terminal interface | Primary accents, active states, cursor |
| **Deep Magenta** | `#ed1e79` | `rgb(237, 30, 121)` | UI highlights | Active workspaces, special states |
| **Dark Red** | `#672026` | `rgb(103, 32, 38)` | Background elements | Window backgrounds, inactive areas |
| **Crimson** | `#c5003c` | `rgb(197, 0, 60)` | Secondary accents | Secondary UI elements, borders |
| **Blood Red** | `#880425` | `rgb(136, 4, 37)` | Status indicators | Battery, temperature, system info |
| **Critical Red** | `#ff1111` | `rgb(255, 17, 17)` | Error states | Critical alerts, urgent notifications |
| **Text White** | `#e0e0e0` | `rgb(224, 224, 224)` | Primary text | Text over dark backgrounds |

## 🎨 RGBA Variants (with transparency)

For backgrounds and overlays:

| Purpose | Color | RGBA Value | Opacity |
|---------|-------|------------|---------|
| Active backgrounds | Terminal Red | `rgba(255, 74, 87, 0.15)` | 15% |
| Active borders | Terminal Red | `rgba(255, 74, 87, 0.5)` | 50% |
| Hover effects | Terminal Red | `rgba(255, 74, 87, 0.2)` | 20% |
| Critical backgrounds | Critical Red | `rgba(255, 17, 17, 0.3)` | 30% |
| Window backgrounds | Dark Red | `rgba(103, 32, 38, 0.9)` | 90% |
| Inactive backgrounds | Dark Red | `rgba(103, 32, 38, 0.38)` | 38% |
| Secondary highlights | Deep Magenta | `rgba(237, 30, 121, 0.25)` | 25% |
| Status backgrounds | Blood Red | `rgba(136, 4, 37, 0.15)` | 15% |

## 🖥️ Application Mapping

### Waybar Components
| Module | Background | Text Color | Border | Usage |
|--------|------------|------------|--------|-------|
| Workspaces (active) | `rgba(237, 30, 121, 0.15)` | `#ed1e79` | `rgba(237, 30, 121, 0.6)` | Active workspace indicators |
| Workspaces (inactive) | `rgba(103, 32, 38, 0.9)` | `#ff4a57` | `rgba(255, 74, 87, 0.3)` | Inactive workspaces |
| Clock | `rgba(197, 0, 60, 0.15)` | `#c5003c` | `rgba(197, 0, 60, 0.5)` | Time display |
| CPU | `rgba(255, 74, 87, 0.15)` | `#ff4a57` | `rgba(255, 74, 87, 0.5)` | CPU usage |
| Memory | `rgba(237, 30, 121, 0.15)` | `#ed1e79` | `rgba(237, 30, 121, 0.5)` | RAM usage |
| Temperature | `rgba(136, 4, 37, 0.15)` | `#880425` | `rgba(136, 4, 37, 0.5)` | System temperature |
| Battery | `rgba(136, 4, 37, 0.15)` | `#880425` | `rgba(136, 4, 37, 0.5)` | Battery status |
| Network | `rgba(197, 0, 60, 0.15)` | `#c5003c` | `rgba(197, 0, 60, 0.5)` | Network connectivity |
| Audio | `rgba(136, 4, 37, 0.15)` | `#880425` | `rgba(136, 4, 37, 0.5)` | Volume control |

### Window Manager (Hyprland)
| Element | Color | Usage |
|---------|-------|-------|
| Active border | `rgba(ff4a5740) rgba(ed1e7940) 45deg` | Active window borders (gradient) |
| Inactive border | `rgba(67202660)` | Inactive window borders |

### Firefox Theme
| Element | Color | Usage |
|---------|-------|-------|
| Active tab | `#ff4a57` | Active tab text |
| Tab background | `rgba(255, 74, 87, 0.15)` | Active tab background |
| Address bar border | `rgba(255, 74, 87, 0.25)` | URL bar border |
| Hover effects | `rgba(255, 74, 87, 0.3)` | Button hover states |

### Qt Applications (Dolphin)
Color scheme file format for qt5ct/qt6ct:
```
active_colors=#ffe0e0e0, #ff672026, #ff804040, #ff330d0f, #ff2a0a0c, #ff4a1518, #ffe0e0e0, #ffffffff, #ffe0e0e0, #ff000000, #ff672026, #ff1a080a, #ffff4a57, #ffffffff, #ffed1e79, #ff880425, #ff672026, #ff000000, #ff672026, #ffe0e0e0, #80e0e0e0
```

## 🔧 Implementation Notes

### CSS Variables
When implementing, these CSS custom properties can be used:
```css
:root {
  /* Cyberpunk 2077 Red Palette */
  --neon-red-bright: #ff4a57;
  --neon-red-deep: #ed1e79;
  --neon-red-dark: #672026;
  --neon-crimson: #c5003c;
  --neon-blood: #880425;
  --neon-critical: #ff1111;
  --neon-text: #e0e0e0;
  
  /* Transparency variants */
  --neon-red-alpha-15: rgba(255, 74, 87, 0.15);
  --neon-red-alpha-20: rgba(255, 74, 87, 0.2);
  --neon-red-alpha-50: rgba(255, 74, 87, 0.5);
  --neon-dark-alpha-90: rgba(103, 32, 38, 0.9);
  --neon-dark-alpha-38: rgba(103, 32, 38, 0.38);
}
```

### Configuration Differences from Dim Theme
Key color replacements when converting from Neon Nexus Dim:
- `#ff6600` (orange) → `#ff4a57` (terminal red)
- `#ffd700` (yellow) → `#ed1e79` (deep magenta)
- `#00ff00` (green) → `#880425` (blood red)
- `#ff1493` (pink) → `#ff1111` (critical red)
- `#00bfff` (blue) → `#c5003c` (crimson)
- `#1a1a1a` (dark bg) → `#672026` (dark red bg)

## 🎯 Design Philosophy

The red theme aims to recreate the authentic "red on red" terminal experience from Cyberpunk 2077, where:
- **Immersion**: Users feel like they're interfacing with Night City's digital infrastructure
- **Authenticity**: Colors match the game's actual terminal interfaces
- **Functionality**: Despite the monochromatic red approach, different red tones provide enough contrast for usability
- **Atmosphere**: The deep crimson backgrounds and bright red accents create the distinctive cyberpunk terminal aesthetic

## 📖 References

- **Game**: Cyberpunk 2077 by CD PROJEKT RED
- **Inspiration**: Terminal interfaces, hacking sequences, and digital infrastructure UI
- **Research**: Color analysis of in-game terminal screenshots and UI elements
- **Goal**: Authentic recreation of the game's signature "red on red" digital aesthetic

---

*Color palette researched and documented for the Neon Nexus theme system*