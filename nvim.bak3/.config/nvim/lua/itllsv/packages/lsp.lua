vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/stevearc/conform.nvim" },
  { src = "https://github.com/pmizio/typescript-tools.nvim" },
  {
    src = "https://github.com/saghen/blink.cmp",
    version = "1.*",
    build = "cargo build --release",
  },
  "rafamadriz/friendly-snippets",
  "nvim-lua/plenary.nvim",
})

require("mason").setup({})
require("blink.cmp").setup({})
require("typescript-tools").setup({
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
      },
    },
  },
})

local lsp_servers = {
  lua_ls = {},
  clangd = {},
  tailwindcss = {},
  vue_ls = {
    settings = {
      init_options = {
        vue = {
          hybridMode = true,
        },
        typescript = {
          tsdk = "~/.local/share/nvim/site/pack/core/opt/typescript-tools.nvim/",
        },
      },
    },
  },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities =
  vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities({}, false))

capabilities = vim.tbl_deep_extend("force", capabilities, {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    },
  },
})

vim.lsp.config("*", {
  capabilities = capabilities,
})

for server_name, server_config in pairs(lsp_servers) do
  vim.lsp.config[server_name] = server_config
  vim.lsp.enable(server_name)
end

require("conform").setup({
  notify_on_error = false,
  format_on_save = function(bufnr)
    local disable_filetypes = { c = true, cpp = true }
    if disable_filetypes[vim.bo[bufnr].filetype] then
      return nil
    else
      return {
        timeout_ms = 500,
        lsp_format = "fallback",
      }
    end
  end,
  formatters = {
    biome = {
      command = "biome",
      args = { "check", "--write", "--stdin-file-path", "$FILENAME" },
      stdin = true,
    },
  },
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    javascript = { "biome", "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "biome", "prettierd", "prettier", stop_after_first = true },
    typescript = { "biome", "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "biome", "prettierd", "prettier", stop_after_first = true },
  },
})

Map("n", "<leader>f", function()
  require("conform").format({ async = true, lsp_format = "fallback" })
end)

Map("n", "<leader>lc", ":checkhealth vim.lsp<cr>")
