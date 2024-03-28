local wezterm = require 'wezterm'
return {
	-- color_scheme = 'termnial.sexy',
	color_scheme = 'Catppuccin Macchiato',
	enable_tab_bar = false,
	font_size = 16.0,
	-- macos_window_background_blur = 40,
	--macos_window_background_blur = 20,
	
	 --window_background_image = '/Users/riccardo/Downloads/33840x2160-black-solid-color-background.jpg',
	 --window_background_image_hsb = {
	 --	brightness = 0.01,
	 --	hue = 1.0,
	 --	saturation = 0.5,
	 --},
	font = wezterm.font_with_fallback({
         "JetBrains Mono",
         harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
	}),
	window_background_opacity = 0,
	keys = {
		{
			key = 'f',
			mods = 'CTRL',
			action = wezterm.action.ToggleFullScreen,
		},
		{key="h", mods="CTRL", action=wezterm.action{SendKey={key="h", mods="CTRL"}}},
    		{key="u", mods="CTRL", action=wezterm.action{SendKey={key="u", mods="CTRL"}}},
    		{key="y", mods="CTRL", action=wezterm.action{SendKey={key="y", mods="CTRL"}}},
    		{key="i", mods="CTRL", action=wezterm.action{SendKey={key="i", mods="CTRL"}}},
    		{key="o", mods="CTRL", action=wezterm.action{SendKey={key="o", mods="CTRL"}}},
	},
}
