return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {
			ui = {
				border = "rounded",
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		lazy = false,
		opts = {
			servers = {
				lua_ls = {},
				vtsls = {},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end,
		keys = {
			{ "K", vim.lsp.buf.hover },
			{ "gd", vim.lsp.buf.definition },
			{ "gr", vim.lsp.buf.references },
			{ "gi", vim.lsp.buf.implementation },
			{ "ca", vim.lsp.buf.code_action },
			{ "gD", vim.lsp.buf.declaration },
			{ "gI", vim.lsp.buf.incoming_calls },
			{ "gO", vim.lsp.buf.outgoing_calls },
			{ "gR", vim.lsp.buf.rename },
		},
	},
}
