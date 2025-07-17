# Firefox Neon Nexus Theme

## Installation

### Automatic Installation
The main install script will handle Firefox theming automatically.

### Manual Installation

1. **Enable userChrome.css support** (required):
   - Open Firefox
   - Type `about:config` in the address bar
   - Search for: `toolkit.legacyUserProfileCustomizations.stylesheets`
   - Set it to: `true`

2. **Find your Firefox profile directory**:
   ```bash
   ls ~/.mozilla/firefox/
   ```
   Look for a directory ending in `.default` or `.default-release`

3. **Install the theme**:
   ```bash
   # Create chrome directory
   mkdir -p ~/.mozilla/firefox/YOUR_PROFILE/chrome
   
   # Copy theme files
   cp chrome/userChrome.css ~/.mozilla/firefox/YOUR_PROFILE/chrome/
   cp user.js ~/.mozilla/firefox/YOUR_PROFILE/
   ```

4. **Restart Firefox** to apply the theme

## Features

- **Dark UI**: Black backgrounds matching Neon Nexus palette
- **Active tabs**: Orange accent matching Hyprland active border color
- **Inactive tabs**: Dark gray matching Hyprland inactive border color  
- **Themed address bar**: Dark background with orange border, no glow effects
- **Custom buttons**: Hover effects with cyberpunk colors
- **Themed menus**: Consistent dark styling with orange highlights
- **Bookmarks bar**: Cyberpunk-styled bookmark buttons, no bottom border
- **Sidebar styling**: Black background matching theme aesthetic
- **New tab page**: Complete theming with dark background and orange accents

## Colors Used

- **Background**: `#000000` (black), `#1a1a1a` (dark gray)
- **Text**: `#e0e0e0` (primary), `#b0b0b0` (secondary)
- **Active elements**: `rgba(255, 102, 0, 0.25)` (matches Hyprland active border)
- **Inactive elements**: `rgba(26, 26, 26, 0.38)` (matches Hyprland inactive border)
- **Orange accent**: `#cc5200` (dimmed primary accent)
- **Blue**: `#0099cc` (dimmed cyber blue)
- **Cyan**: `#00cccc` (dimmed cyan)
- **Green**: `#00cc00` (dimmed green)
- **Pink**: `#cc1174` (dimmed pink for alerts)

## Troubleshooting

### Theme not applying?
1. Verify `toolkit.legacyUserProfileCustomizations.stylesheets` is set to `true`
2. Restart Firefox completely
3. Check that files are in the correct profile directory

### Finding your profile
If you're unsure which profile directory to use:
1. Type `about:support` in Firefox
2. Look for "Profile Directory" 
3. Use that path for installation

### Performance issues?
The user.js file includes performance optimizations. If you experience issues:
1. Remove the user.js file
2. Restart Firefox
3. Manually enable only `toolkit.legacyUserProfileCustomizations.stylesheets`