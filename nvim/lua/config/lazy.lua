require("config.bootstrap")
require("config.options")
require("config.keymaps")
require("config.autocmds")

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	ui = {
		border = "rounded",
	},
	defaults = {
		lazy = false,
		version = false,
	},
})
