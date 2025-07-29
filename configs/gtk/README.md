# Neon Nexus GTK Theme

Cyberpunk dark theme for GTK applications including Thunar file manager.

## Features

- **Dark Foundation**: Deep dark backgrounds matching the Waybar theme
- **Neon Accents**: Orange highlights and yellow selections
- **Cyberpunk Colors**: Full Neon Nexus color palette integration
- **GTK3 & GTK2**: Complete compatibility with both GTK versions
- **Rounded Corners**: Consistent with the floating design language
- **Glow Effects**: Subtle cyberpunk glow on focused elements

## Color Scheme

- **Primary Orange**: `#ff6600` - Buttons, links, active elements
- **Electric Yellow**: `#ffd700` - Selected items, highlights
- **Dark Base**: `#1a1a1a` - Main background
- **Dark Surface**: `#2a2a2a` - Panels, toolbars
- **Dark Elevated**: `#3a3a3a` - Menus, popovers

## Installation

### Automatic (via repository)
```bash
# Install theme files
cp -r configs/gtk/themes/NeonNexus ~/.themes/

# Install GTK3 configuration
mkdir -p ~/.config/gtk-3.0
cp configs/gtk/config/gtk-3.0-settings.ini ~/.config/gtk-3.0/settings.ini

# Install GTK2 configuration  
cp configs/gtk/config/gtk-2.0-gtkrc ~/.gtkrc-2.0

# Apply theme
gsettings set org.gnome.desktop.interface gtk-theme 'NeonNexus'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

### Manual Setup
1. Copy theme directory to `~/.themes/NeonNexus/`
2. Set GTK theme in your desktop environment settings
3. Or use gsettings commands above

## Compatibility

### Fully Supported
- **Thunar** - Xfce file manager
- **GTK3 applications** - Modern GTK apps
- **GTK2 applications** - Legacy GTK apps

### Tested Applications
- File managers (Thunar, Nautilus)
- Text editors (Gedit, Kate with GTK interface)
- System dialogs
- Application choosers

## Customization

Edit `~/.themes/NeonNexus/gtk-3.0/gtk.css` to customize:

```css
/* Change accent color */
@define-color neon_orange #your_color;

/* Modify background darkness */
@define-color dark_base #your_background;

/* Adjust glow intensity */
box-shadow: 0 0 12px rgba(255, 102, 0, 0.5);
```

## Troubleshooting

### Theme not applying
```bash
# Refresh GTK theme cache
gsettings set org.gnome.desktop.interface gtk-theme ''
gsettings set org.gnome.desktop.interface gtk-theme 'NeonNexus'
```

### Check theme installation
```bash
ls ~/.themes/NeonNexus/
# Should show: gtk-2.0/ gtk-3.0/ index.theme
```

### Verify GTK version
```bash
# Check what GTK version an app uses
ldd $(which thunar) | grep gtk
```