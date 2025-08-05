return {
  vim.pack.add({
    { src = 'https://github.com/rebelot/kanagawa.nvim' },
    { src = 'https://github.com/vague2k/vague.nvim' },
  }),

  vim.cmd("colorscheme vague")
}
