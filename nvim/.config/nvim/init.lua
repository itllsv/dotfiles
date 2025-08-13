vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.colorcolumn = "100"
vim.o.scrolloff = 10
vim.o.sidescrolloff = 20
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = "unnamedplus"
vim.o.undofile = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.cmd("set completeopt+=noselect")

vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/williamboman/mason.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/folke/noice.nvim" },
	{ src = "https://github.com/akinsho/bufferline.nvim" },

	-- dependencies
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/rcarriga/nvim-notify" },
	{ src = "https://github.com/miversen33/sunglasses.nvim" },
})

vim.lsp.enable({
	"clangd",
	"vue_ls",
	"ts_ls",
	"lua_ls",
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})

require("nvim-treesitter.configs").setup({
	highlight = { enable = true },
	indent = { enable = true },
})

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
	overrides = function()
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
		}
	end,
})

vim.cmd("colorscheme kanagawa")

require("sunglasses").setup({
	filter_percent = 0.50,
	filter_type = "SHADE",
	excluded_filetypes = {},
	excluded_buftypes = {},
})

require("mason").setup({
	ui = {
		border = "rounded",
	},
})

require("noice").setup({
	cmdline = {
		view = "cmdline",
	},
	views = {
		popupmenu = {
			border = {
				style = "rounded",
				padding = { 0, 1 },
			},
		},
		hover = {
			border = {
				style = "rounded",
			},
			scrollbar = false,
		},
	},
	lsp = {
		hover = {
			enabled = true,
		},
		signature = {
			enabled = true,
		},
	},
})

require("telescope").setup()

require("neo-tree").setup({
	window = {
		mappings = {
			["l"] = "open",
			["h"] = "close_node",
		},
	},
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		javascript = { "prettier" },
		typescript = { "prettier" },
	},
})

vim.keymap.set("n", "<leader><leader>", ":Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>h", ":Telescope help_tags<cr>", { desc = "Find help" })
vim.keymap.set("n", "<leader>b", ":Telescope buffers<cr>", { desc = "Find buffers" })

vim.keymap.set("n", "<leader>e", function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd("wincmd l")
	else
		vim.cmd("Neotree focus")
	end
end, { desc = "Toggle focus between neo-tree and right buffer" })

vim.keymap.set("n", "<leader>f", function()
	require("conform").format()
end, { desc = "Format buffer" })

vim.keymap.set("n", "<leader>w", ":update<cr> :source<cr>", { desc = "Update and source buf" })
vim.keymap.set("n", "<leader>q", ":quit<cr>", { desc = "Quit buf" })
vim.keymap.set("n", "<esc>", ":nohlsearch<cr>", { desc = "Clean highlight search" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate right window" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate left window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate top window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate bottom window" })
vim.keymap.set("n", "<A-j>", ":m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move selected lines up" })

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.on_yank()
	end,
})

