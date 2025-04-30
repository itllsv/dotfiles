return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		opts = {
			theme = "auto",
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = {
					{
						"buffers",
						show_filename_only = true,
						hide_filename_extension = false,
						show_modified_status = true,
						mode = 0,
						symbols = {
							modified = " ●",
							alternate_file = "",
							directory = " ",
						},
					},
				},
			},
		},

		keys = {
			{ "H", "<cmd>bprevious<cr>" },
			{ "L", "<cmd>bnext<cr>" },
		},
	},
	{
		"echasnovski/mini.bufremove",
		keys = {
			{
				"<leader>bd",
				function()
					require("mini.bufremove").delete(0, false)
				end,
			},
			{
				"<leader>bo",
				function()
					local current = vim.api.nvim_get_current_buf()
					for _, buf in ipairs(vim.api.nvim_list_bufs()) do
						if buf ~= current and vim.bo[buf].buflisted then
							require("mini.bufremove").delete(buf, true)
						end
					end
				end,
			},
		},
	},
}
