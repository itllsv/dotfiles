local wezterm = require("wezterm")

local M = {}

M.config = {
	wide_window_threshold = 0.7,
	wide_padding = {
		left = 400,
		right = 400,
		top = 10,
		bottom = 10,
	},
	narrow_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},
}

function M.recompute_padding(window)
	local window_dims = window:get_dimensions()
	local overrides = window:get_config_overrides() or {}

	local screen_width = window_dims.pixel_width / (window_dims.dpi / 96) * (window_dims.dpi / 96)
	local is_wide_window = window_dims.is_full_screen
		or (window_dims.pixel_width >= screen_width * M.config.wide_window_threshold)

	local new_padding
	if is_wide_window then
		new_padding = M.config.wide_padding
	else
		new_padding = M.config.narrow_padding
	end

	if
		overrides.window_padding
		and new_padding.left == overrides.window_padding.left
		and new_padding.right == overrides.window_padding.right
		and new_padding.top == overrides.window_padding.top
		and new_padding.bottom == overrides.window_padding.bottom
	then
		return
	end

	overrides.window_padding = new_padding
	window:set_config_overrides(overrides)
end

function M.setup()
	wezterm.on("window-resized", function(window, pane)
		M.recompute_padding(window)
	end)

	wezterm.on("window-config-reloaded", function(window)
		M.recompute_padding(window)
	end)
end

return M
