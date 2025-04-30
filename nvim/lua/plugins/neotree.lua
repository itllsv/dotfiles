return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			window = {
				mappings = {
					["l"] = "open",
					["h"] = "close_node",
				},
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
				},
				hijack_netrw_behavior = "open_default",
				use_libuv_file_watcher = true,
				filtered_items = {
					hide_dotfiles = false,
					hide_by_name = {
						".git",
						"node_modules",
						".DS_Store",
					},
					always_show_by_pattern = {
						".env*",
						".config*",
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
	end,
}
