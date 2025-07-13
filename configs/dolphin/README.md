# Dolphin File Manager Neon Nexus Dim Theme

## Overview

This configuration provides Neon Nexus Dim theming for Dolphin file manager and other Qt applications using qt5ct and qt6ct.

## Installation

### Prerequisites
```bash
sudo pacman -S qt5ct qt6ct kvantum breeze-icons
```

### Automatic Installation
The main install script will handle Dolphin theming automatically.

### Manual Installation

1. **Set environment variable in Hyprland**:
   Add to `~/.config/hypr/hyprland.conf`:
   ```
   env = QT_QPA_PLATFORMTHEME,qt5ct
   ```

2. **Install Qt theme configs**:
   ```bash
   # Copy Qt5 configuration
   cp -r qt5ct ~/.config/
   
   # Copy Qt6 configuration  
   cp -r qt6ct ~/.config/
   ```

3. **Restart Hyprland** to apply environment variables:
   ```bash
   hyprctl reload
   ```

## Features

- **Dark UI**: Black and dark gray backgrounds matching Neon Nexus Dim palette
- **Orange accents**: Dim orange highlights for selections and active elements
- **Consistent fonts**: Fira Code font family throughout
- **Breeze Dark icons**: Dark icon theme for better visibility
- **Fusion style**: Qt Fusion style for clean, modern appearance

## Colors Used

- **Background**: `#1a1a1a` (primary), `#000000` (secondary)
- **Text**: `#e0e0e0` (primary), `#b0b0b0` (secondary/disabled)
- **Selection**: `#cc5200` (dim orange)
- **Highlight**: `#ff6600` (bright orange for active elements)
- **Error/Alert**: `#cc1174` (dim pink)

## Configuration Details

### Qt5ct Configuration
- **Style**: Fusion (native Qt style with good theming support)
- **Icon Theme**: breeze-dark
- **Color Scheme**: Custom "neon-nexus-dim" palette
- **Font**: Fira Code 10pt for consistency

### Qt6ct Configuration
- **Style**: Fusion
- **Icon Theme**: breeze-dark  
- **Color Scheme**: Custom "neon-nexus-dim" palette
- **Font**: Fira Code 10pt for consistency

## Troubleshooting

### Theme not applying?
1. Verify `QT_QPA_PLATFORMTHEME=qt5ct` environment variable is set
2. Restart Hyprland or log out/in to apply environment changes
3. Check that qt5ct and qt6ct packages are installed

### Icons not showing?
1. Install breeze-icons package: `sudo pacman -S breeze-icons`
2. Run `qt5ct` or `qt6ct` and verify icon theme is set to "breeze-dark"

### Dolphin still looks default?
1. Make sure Dolphin is using the Qt theme by checking if other Qt apps are themed
2. Try running Dolphin from terminal to see any error messages
3. Verify the color scheme files are in the correct locations

### Font issues?
The configuration uses Fira Code font. If not installed:
```bash
sudo pacman -S ttf-fira-code
```

## Testing

To test the theme:
1. Open Dolphin file manager
2. Check that the background is dark and text is light
3. Select files to see orange highlighting
4. Open context menus to verify dark styling

## Additional Qt Applications

This theming will also apply to other Qt applications like:
- KDE Connect
- Qt-based text editors
- Other KDE applications

## Technical Notes

- Uses Qt5ct for Qt5/Qt6 application theming in non-KDE environments
- Color scheme format follows Qt's QPalette color roles
- Environment variable tells Qt applications to use qt5ct for theming
- qt6ct automatically handles Qt6 applications when qt5ct is set as platform theme