vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/williamboman/mason.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/windwp/nvim-ts-autotag" },
	{ src = "https://github.com/folke/trouble.nvim" },
	{ src = "https://github.com/saghen/blink.cmp" },

	-- dependencies
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
})

require("itllsv.packages.colorscheme")
require("itllsv.packages.lsp")
require("itllsv.packages.treesitter")
require("itllsv.packages.telescope")
require("itllsv.packages.oil")
require("itllsv.packages.conform")
require("itllsv.packages.autopairs")
require("itllsv.packages.nvim-ts-autotag")
require("itllsv.packages.trouble")
require("itllsv.packages.blink")
