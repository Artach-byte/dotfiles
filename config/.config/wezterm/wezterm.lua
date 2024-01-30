-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
 config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'
--config.window_decorations = "NONE"
config.default_prog = { "/usr/bin/zsh", "-l" }
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font 'BlexMono Nerd Font Mono'
config.font_size = 14.0
config.window_background_opacity = 0.75
config.enable_wayland = true
config.enable_kitty_graphics = true

-- and finally, return the configuration to wezterm
return config
