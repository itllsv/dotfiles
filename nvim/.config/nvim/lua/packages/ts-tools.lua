return {
  vim.pack.add({
    { src = "https://github.com/pmizio/typescript-tools.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = 'http://github.com/nvim-lua/plenary.nvim' }
  }),

  require("typescript-tools").setup({})

}
