/*
 * Firefox user.js - "Neon Nexus Dim" Configuration
 * Required settings to enable userChrome.css theming
 */

// Enable legacy userChrome.css support
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Dark theme preferences that work well with Neon Nexus Dim
user_pref("ui.systemUsesDarkTheme", 1);
user_pref("browser.theme.dark-private-windows", true);

// Enhanced developer tools for theme debugging
user_pref("devtools.theme", "dark");
user_pref("devtools.chrome.enabled", true);
user_pref("devtools.debugger.remote-enabled", true);

// Performance optimizations for smooth theming
user_pref("gfx.webrender.all", true);
user_pref("layers.acceleration.force-enabled", true);

// Better font rendering for theme consistency
user_pref("gfx.font_rendering.cleartype_params.rendering_mode", 5);
user_pref("gfx.font_rendering.cleartype_params.cleartype_level", 100);