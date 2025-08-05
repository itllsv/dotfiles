return {
  vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' }),

  require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "typescript", "javascript", "c" },
    highlight = { enable = true },
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    modules = {}
  })
}
