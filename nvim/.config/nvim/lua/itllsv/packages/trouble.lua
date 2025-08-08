vim.pack.add({
  { src = "https://github.com/folke/trouble.nvim" },
})

require("trouble").setup({})

Map("n", "<leader>xX", ":Trouble diagnostics toggle<CR>")
Map("n", "<leader>xx", ":Trouble diagnostics toggle filter.buf=0<CR>")
