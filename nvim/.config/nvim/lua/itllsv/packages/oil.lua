require("oil").setup({
	default_file_explorer = true,
	columns = {
		"icon",
	},
	preview_split = "right",
	preview = {
		max_width = 0.9,
		min_width = { 40, 0.4 },
		width = nil,
		max_height = 0.9,
		min_height = { 5, 0.1 },
		height = nil,
		border = "rounded",
		win_options = {
			winblend = 0,
		},
		update_on_cursor_moved = true,
	},
	keymaps = {
		["<C-l>"] = "actions.select",
		["<C-h>"] = "actions.parent",
		["<esc><esc>"] = "actions.close",
		["<backspace>"] = "actions.parent",
		["."] = "actions.open_cwd",
	},
	use_default_keymaps = true,
	view_options = {
		show_hidden = true,
		is_hidden_file = function(name, bufnr)
			return vim.startswith(name, ".")
		end,
		is_always_hidden = function(name, bufnr)
			return false
		end,
	},
	git = {
		add = function(path)
			return true
		end,
		mv = function(src_path, dest_path)
			return true
		end,
		rm = function(path)
			return true
		end,
	},
	float = {
		padding = 2,
		max_width = 0,
		max_height = 0,
		border = "rounded",
		win_options = {
			winblend = 0,
		},
	},
	progress = {
		max_width = 0.9,
		min_width = { 40, 0.4 },
		width = nil,
		max_height = { 10, 0.9 },
		min_height = { 5, 0.1 },
		height = nil,
		border = "rounded",
		minimized_border = "none",
		win_options = {
			winblend = 0,
		},
	},
})

vim.keymap.set("n", "<leader>-", require("oil").toggle_float)
