require("blink.cmp").setup({
	completion = {
		documentation = {
			auto_show = true,
		},
		list = {
			selection = {
				preselect = true,
			},
		},
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
	keymap = {
		preset = "enter",
		["<CR>"] = { "accept", "fallback" },
	},
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
	},
	signature = {
		enabled = true,
	},
})
