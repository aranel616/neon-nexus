# Neon Nexus Customization Guide

This guide covers how to customize various aspects of the Neon Nexus theme to match your preferences.

## 🎨 Color Customization

### Waybar Colors

Edit `~/.config/waybar/style.css` to change module colors:

```css
/* Change CPU module color */
#cpu {
    background: rgba(YOUR_COLOR_HERE, 0.15);
    color: #YOUR_ACCENT_COLOR;
    border: 1px solid rgba(YOUR_COLOR_HERE, 0.5);
}
```

### Hyprland Border Colors

Edit `~/.config/hypr/hyprland.conf`:

```conf
# Main window borders
col.active_border = rgba(ff660040) rgba(ffd70040) 45deg
col.inactive_border = rgba(1a1a1a60)

# App-specific borders
windowrulev2 = bordercolor rgba(YOUR_COLOR40), class:^(app_name)$
```

### Mako Notification Colors

Edit `~/.config/mako/config`:

```ini
# Change default notification colors
background-color=#1a1a1aE6
text-color=#ffffff
border-color=#ff6600

# Urgency-specific colors
[urgency=critical]
border-color=#ff1493
background-color=#1a1a1aF0
```

## ⚡ Animation Customization

### Speed Adjustments

In `~/.config/hypr/hyprland.conf`, change animation durations:

```conf
# Faster animations (reduce numbers)
animation = windows, 1, 2, cyberpunk, slide      # was 3
animation = workspaces, 1, 3, cyberpunk, slide   # was 4

# Slower animations (increase numbers)
animation = windows, 1, 5, cyberpunk, slide      # was 3
animation = workspaces, 1, 6, cyberpunk, slide   # was 4
```

### Custom Bezier Curves

Create your own animation curves:

```conf
# Add new bezier curves
bezier = myCustom, 0.05, 0.9, 0.1, 1.05
bezier = bouncy, 0.68, -0.55, 0.265, 1.55

# Use in animations
animation = windows, 1, 4, myCustom, slide
animation = windowsIn, 1, 5, bouncy, popin 85%
```

## 🖼️ Layout Customization

### Window Gaps

Adjust spacing in `~/.config/hypr/hyprland.conf`:

```conf
general {
    gaps_in = 8      # Inner gaps between windows
    gaps_out = 15    # Outer gaps from screen edges
    border_size = 3  # Border thickness
}
```

### Window Rounding

Change corner radius:

```conf
decoration {
    rounding = 8     # Corner radius in pixels
}
```

### Waybar Height and Spacing

Edit `~/.config/waybar/config.jsonc`:

```jsonc
{
    "height": 35,    // Bar height
    "spacing": 4,    // Module spacing
}
```

## 📱 Module Customization

### Adding New Waybar Modules

1. Add to module list in `config.jsonc`:
```jsonc
"modules-right": [
    "your-new-module",
    "cpu",
    "memory"
]
```

2. Configure the module:
```jsonc
"your-new-module": {
    "format": "{} 🔥",
    "tooltip": false
}
```

3. Style in `style.css`:
```css
#your-new-module {
    background: rgba(255, 102, 0, 0.15);
    color: #ff6600;
    border: 1px solid rgba(255, 102, 0, 0.5);
}
```

### Hyprland Window Rules

Add custom rules for specific applications:

```conf
# Custom opacity
windowrulev2 = opacity 0.9 0.8, class:^(your-app)$

# Custom border colors
windowrulev2 = bordercolor rgba(ff660040), class:^(your-app)$

# Floating rules
windowrulev2 = float, class:^(your-app)$, title:^(Dialog)$
```

## 🔤 Typography

### Font Changes

Update font family in:

**Waybar** (`style.css`):
```css
* {
    font-family: 'Your Font', 'Fallback Font', monospace;
    font-size: 14px;
}
```

**Mako** (`config`):
```ini
font=Your Font 12
```

### Font Sizes

Adjust sizes per module:
```css
#clock {
    font-size: 15px;
    font-weight: bold;
}

#workspaces button {
    font-size: 12px;
}
```

## 🎭 Transparency Effects

### Window Transparency

Global transparency in `hyprland.conf`:
```conf
decoration {
    active_opacity = 1.0      # Focused windows
    inactive_opacity = 0.95   # Unfocused windows
}
```

Per-application transparency:
```conf
windowrulev2 = opacity 0.9 0.8, class:^(kitty)$
windowrulev2 = opacity 0.95 0.9, class:^(code)$
```

### Waybar Transparency

In `style.css`:
```css
window#waybar {
    background: transparent;  /* Fully transparent */
    /* or */
    background: rgba(26, 26, 26, 0.8);  /* Semi-transparent */
}
```

## 🔧 Advanced Customization

### Conditional Styling

Style based on window state:
```css
/* Active workspace */
#workspaces button.active {
    background: rgba(255, 102, 0, 0.3);
    box-shadow: 0 0 20px rgba(255, 102, 0, 0.8);
}

/* Battery states */
#battery.charging {
    color: #ffd700;
    background: rgba(255, 215, 0, 0.25);
}

#battery.critical:not(.charging) {
    color: #ff1493;
    animation: blink 1s infinite;
}
```

### Custom Animations

CSS animations for Waybar:
```css
@keyframes blink {
    0%, 50% { opacity: 1; }
    51%, 100% { opacity: 0.3; }
}

@keyframes glow {
    0%, 100% { box-shadow: 0 0 10px rgba(255, 102, 0, 0.5); }
    50% { box-shadow: 0 0 25px rgba(255, 102, 0, 0.9); }
}

#cpu:hover {
    animation: glow 2s infinite;
}
```

## 📝 Tips and Tricks

1. **Live Reload**: Use `hyprctl reload` to test changes instantly
2. **Color Testing**: Use online color pickers to experiment with rgba values
3. **Backup**: Always backup configs before major changes
4. **CSS Inspector**: Use browser dev tools on Waybar for CSS debugging
5. **Transparency**: Keep opacity values above 0.8 for readability

## 🐛 Troubleshooting

### Colors Not Applying
- Check for syntax errors in CSS/config files
- Ensure proper rgba format: `rgba(255, 102, 0, 0.4)`
- Restart the affected service

### Animations Too Slow/Fast
- Adjust duration values in hyprland.conf
- Test different bezier curves
- Consider hardware performance

### Font Issues
- Verify font installation: `fc-list | grep "Font Name"`
- Use fallback fonts in CSS
- Clear font cache: `fc-cache -fv`