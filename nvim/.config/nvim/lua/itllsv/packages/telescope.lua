require("telescope").setup({
	defaults = {
		layout_config = {
			width = 0.95,
			height = 0.95,
			preview_cutoff = 0,
		},
		mappings = {
			i = {
				["<C-u>"] = false,
				["<C-d>"] = false,
			},
		},
	},
	pickers = {
		find_files = {
			previewer = true,
		},
		live_grep = {
			previewer = true,
		},
		buffers = {
			previewer = true,
		},
		help_tags = {
			previewer = true,
		},
	},
})

vim.keymap.set("n", "<leader><leader>", ":Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>h", ":Telescope help_tags<cr>", { desc = "Find help" })
vim.keymap.set("n", "<leader>b", ":Telescope buffers<cr>", { desc = "Find buffers" })
