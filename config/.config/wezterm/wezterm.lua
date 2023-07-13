local wezterm = require("wezterm")

return {
	default_prog = { "/usr/bin/zsh", "-l" },
	window_decorations = "NONE",
	font = wezterm.font_with_fallback({
		{
			family = "VictorMono Nerd Font",
		},
	}),
	font_size = 13.0,
	line_height = 1,
	enable_wayland = true,
	--color_scheme = 'nord',
	--color_scheme = 'Gruvbox dark, medium (base16)',
	--color_scheme = 'Everforest Dark (Gogh)',
	color_scheme = 'Catppuccin Mocha',

	hide_tab_bar_if_only_one_tab = true,
	tab_max_width = 16,
	enable_scroll_bar = false,
	initial_rows = 30,
	initial_cols = 100,
	enable_kitty_graphics = true,
	window_background_opacity = 0.95,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	text_background_opacity = 1.0,
	bold_brightens_ansi_colors = false,
	hyperlink_rules = {
		{
			regex = [[\b\w+://[\w.-]+\S*\b]],
			format = "$0",
		},
		{
			regex = "\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b",
			format = "$0",
		},
		{
			regex = [[\b\w+@[\w-]+(\.[\w-]+)+\b]],
			format = "mailto:$0",
		},
		{
			regex = [[\bfile://\S*\b]],
			format = "$0",
		},
		{
			regex = [[\b\w+://(?:[\d]{1,3}\.){3}[\d]{1,3}\S*\b]],
			format = "$0",
		},
		{
			regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
			format = "https://www.github.com/$1/$3",
		},
	},
}
