return {
	{
		"rebelot/kanagawa.nvim",
		enabled = true,
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				transparent = true,
				overrides = function()
					return {
						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none" },
						FloatTitle = { bg = "none" },
						NormalDark = { bg = "none" },
						LazyNormal = { bg = "none" },
						MasonNormal = { bg = "none" },
						TelescopeBorder = { bg = "none" },
						TelescopeTitle = { bg = "none" },
					}
				end,
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
			})

			vim.cmd.colorscheme("kanagawa-wave")
		end,
	},
}
