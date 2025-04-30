local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_background_opacity = 0.93
config.window_decorations = "NONE"
config.use_dead_keys = false
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.font = wezterm.font({
  family = "MonoLisa",
  weight = "Regular",
  italic = false,
      harfbuzz_features = {
        "calt=1",
        "ss01=1",
        "ss06=1",
        "ss07=1",
        "ss08=1",
        "ss11=1",
        "ss15=1",
        "ss16=1",
        "zero=1"
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
        "calt=1",
        "ss01=1",
        "ss07=1",
        "ss08=1",
        "ss11=1",
        "ss15=1",
        "ss16=1",
        "zero=1"
      },
    }),
  },
}
config.font_size = 13
config.line_height = 1
-- config.color_scheme = "tokyonight_night"
-- config.color_scheme = "Catppuccin Mocha"
-- config.colors = require("cyberdream")
config.color_scheme = "Kanagawa (Gogh)"
config.window_padding = {
	bottom = 0,
}
return config
