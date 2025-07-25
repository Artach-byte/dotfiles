local wezterm = require("wezterm")
local act = wezterm.action


local config = {}
-- Use config builder object if possible
if wezterm.config_builder then config = wezterm.config_builder() end

-- Settings
config.default_prog = { "/home/linuxbrew/.linuxbrew/bin/zsh", "-l" }

config.color_scheme = "catppuccin-mocha"
config.font = wezterm.font('Iosevka Nerd Font')
config.window_background_opacity = 0.95
config.font_size = 13
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "main"
config.hide_mouse_cursor_when_typing = true

-- Dim inactive panes
config.inactive_pane_hsb = {
    saturation = 0.24,
    brightness = 0.5
}
config.enable_wayland = true

-- Tab bar
config.use_fancy_tab_bar = false
config.status_update_interval = 1000
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = true
-- and finally, return the configuration to wezterm
return config
