return {
  vim.pack.add({ 'https://github.com/echasnovski/mini.pick' }),

  require("mini.pick").setup({}),

  _G.Map("<leader><leader>", "<CMD>Pick files<CR>"),
  _G.Map("<leader>sh", "<CMD>Pick help<CR>"),
  _G.Map("<leader>sg", "<CMD>Pick grep_live<CR>")
}
