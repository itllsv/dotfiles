require("kanagawa").setup({
	transparent = true,
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},
	overrides = function(colors)
		local theme = colors.theme

		local opts = { bg = "none" }
		return {
			Normal = opts,
			NormalFloat = opts,
			NormalDark = opts,
			FloatTitle = opts,
			FloatBorder = opts,
			MasonNormal = opts,
			TelescopeTitles = opts,
			TelescopeBorder = opts,
			StatusLine = opts,
			Pmenu = opts,
			BlinkCmpMenuBorder = opts,
		}
	end,
})

vim.cmd.colorscheme("kanagawa")
