vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "http://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/pmizio/typescript-tools.nvim" },
  { src = "https://github.com/stevearc/conform.nvim" },
  { src = "https://github.com/saghen/blink.cmp", version = "1.*" },
  { src = "https://github.com/rafamadriz/friendly-snippets" },
})

require("mason").setup({})
require("typescript-tools").setup({})
require("blink.cmp").setup({})

local capabilities = require("blink.cmp").get_lsp_capabilities()

capabilities = vim.tbl_deep_extend("force", capabilities, {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = false,
    },
  },
})

vim.lsp.config("*", {
  capabilities = capabilities,
})

vim.lsp.config.lua_ls = {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJit",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}

vim.lsp.enable({
  "lua_ls",
  "clangd",
  "vue_ls",
  "biome",
  "stylua",
  "prettier",
  "prettierd",
  "tailwindcss",
  "isort",
  "black",
})

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
