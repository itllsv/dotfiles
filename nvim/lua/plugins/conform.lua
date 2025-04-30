return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = function(_, opts)
		opts.format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		}
		opts.formatters = {
			["biome-check"] = {
				command = "biome",
				args = { "check", "--write", "$FILENAME" },
				condition = function()
					return vim.fn.filereadable("biome.json") == 1
				end,
			},
		}
		opts.formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "biome-check" },
			javascriptreact = { "biome-check" },
			typescript = { "biome-check" },
			typescriptreact = { "biome-check" },
		}
		opts.notify_on_error = false
	end,
	keys = {
		{
			"<leader>ww",
			function()
				require("conform").format()
			end,
		},
	},
}
