local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = require("colors.kanagawa")
-- config.colors = require("colors.vague")
config.foreground_text_hsb = {
    saturation = 0.9,  -- reduce saturation (0.0 = grayscale, 1.0 = full)
    -- saturation = 1,  -- reduce saturation (0.0 = grayscale, 1.0 = full)
  }

config.font_size = 12
config.window_background_opacity = 0.94

config.window_decorations = "NONE"
config.use_dead_keys = false
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.font = wezterm.font({
	family = "MonoLisa",
	weight = "Regular",
	italic = false,
	harfbuzz_features = {
		"liga=0",
		"calt=0",
		"ss01=1",
		"ss02=0",
		"ss06=1",
		"ss07=1",
		"ss08=1",
		"ss11=1",
		"ss15=1",
		"ss16=1",
		"zero=1",
	},
})

config.font_rules = {
	{
		italic = true,
		font = wezterm.font({
			family = "MonoLisa",
			weight = "Regular",
			italic = true,
			harfbuzz_features = {
				"liga=0",
				"calt=0",
				"ss01=1",
				"ss02=0",
				"ss07=1",
				"ss08=1",
				"ss11=1",
				"ss15=1",
				"ss16=1",
				"zero=1",
			},
		}),
	},
}
config.window_padding = {
	bottom = 10,
	top = 10,
	left = 20,
	right = 20,
}
config.keys = {
	{ key = "L", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment },
}
return config
