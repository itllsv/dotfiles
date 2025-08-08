return {
  vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  }),

  require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "typescript", "javascript", "c", "vue" },
    highlight = { enable = true },
    sync_install = false,
    auto_install = true,
  }),
}
