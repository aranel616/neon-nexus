# Neon Nexus Rofi Theme

Cyberpunk application launcher theme for Rofi (Wayland compatible).

## Features

- **Dark Foundation**: Deep dark backgrounds matching Waybar and Mako
- **Neon Accents**: Orange highlights with glow effects on selection
- **Floating Design**: Rounded corners with cyberpunk border glow
- **Modern Icons**: Full icon support with glow effects
- **Smooth Animations**: Subtle selection animations and hover states
- **Fuzzy Matching**: Fast, intelligent application search

## Color Scheme

Fully matches the Neon Nexus palette:

- **Primary Orange**: `#ff6600` - Selection, borders, active states
- **Electric Yellow**: `#ffd700` - Secondary highlights
- **Dark Base**: `#1a1a1a` - Main background
- **Dark Surface**: `#2a2a2a` - Panels
- **Dark Elevated**: `#3a3a3a` - Elevated elements

## Installation

### Automatic (via repository)

```bash
# Create rofi config directory
mkdir -p ~/.config/rofi

# Copy theme and config files
cp configs/rofi/neon-nexus.rasi ~/.config/rofi/
cp configs/rofi/config.rasi ~/.config/rofi/

# Test rofi
rofi -show drun
```

### Manual Setup

1. Copy `neon-nexus.rasi` to `~/.config/rofi/`
2. Copy `config.rasi` to `~/.config/rofi/`
3. Run `rofi -show drun` to launch

## Usage

### Basic Commands

```bash
# Application launcher (default)
rofi -show drun

# Run command
rofi -show run

# Window switcher
rofi -show window
```

### Hyprland Integration

Replace Wofi with Rofi in `~/.config/hypr/hyprland.conf`:

```conf
# Application launcher
bind = $mainMod, D, exec, rofi -show drun

# Or set the menu variable
$menu = rofi -show drun
bind = $mainMod, D, exec, $menu
```

## Customization

Edit `~/.config/rofi/neon-nexus.rasi` to customize colors:

```rasi
* {
    /* Change accent color */
    neon-orange: #your_color;

    /* Modify background darkness */
    dark-base: #your_background;

    /* Adjust glow intensity */
    orange-border: rgba(255, 102, 0, 0.8);
}
```

## Keyboard Shortcuts

- **↑/↓ or Ctrl+k/j**: Navigate entries
- **Enter**: Launch selected application
- **Esc or Ctrl+c**: Close rofi
- **Tab**: Autocomplete
- **Ctrl+Tab**: Switch modes (drun/run/window)

## Compatibility

### Tested With
- **Rofi**: 2.0.0+ (Wayland fork: rofi-wayland)
- **Display Servers**: Wayland (Hyprland)
- **Icon Themes**: Adwaita, Papirus, any standard icon theme

### Features
- Full Wayland support via rofi-wayland
- Application icons with glow effects
- Fuzzy search matching
- Window switcher mode
- Run command mode
- Custom keyboard bindings

## Troubleshooting

### Theme not applying

```bash
# Check if config file exists
ls ~/.config/rofi/config.rasi

# Verify theme file is found
rofi -show drun -dump-config | grep theme
```

### Icons not showing

```bash
# Enable icons in config.rasi
show-icons: true;

# Set icon theme
icon-theme: "Adwaita";
```

### Performance issues

```bash
# Disable icons if needed
rofi -show drun -no-show-icons

# Or edit config.rasi and set:
show-icons: false;
```

## Additional Modes

Rofi supports many modes. Add to `config.rasi`:

```rasi
configuration {
    modes: "drun,run,window,ssh,filebrowser";
}
```

Then use:
- `rofi -show ssh` - SSH connection manager
- `rofi -show filebrowser` - File browser
- `rofi -show window` - Window switcher

## Theme Architecture

The theme uses a modular structure:

- **neon-nexus.rasi**: Complete theme styling
  - Color palette definitions
  - Component styling (window, inputbar, elements, etc.)
  - Hover and selection states
  - Glow effects and animations

- **config.rasi**: Behavior configuration
  - Modes and display options
  - Keyboard bindings
  - Performance settings
  - Theme import

This separation allows easy theme updates without changing behavior settings.
