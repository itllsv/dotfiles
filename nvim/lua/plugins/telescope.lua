return {

	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		config = function()
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")

			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
							["<C-h>"] = actions.close,

							["<C-l>"] = actions.select_default,
						},
					},
				},
			})
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>gg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>bb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>hh", builtin.help_tags, { desc = "Telescope help tags" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		opts = function(_, opts)
			opts.extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			}
			require("telescope").load_extension("ui-select")
		end,
	},
}
