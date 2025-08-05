return {
  _G.Map("<leader>lf", '<CMD>lua vim.lsp.buf.format()<CR>', "LSP Format"),

  _G.Map("<leader>xx", "<CMD> lua vim.diagnostic.open_float(nil, { scope = 'line' })<CR>", "Toggle diagnostics on/off"),
  _G.Map(']d', function()
    vim.diagnostic.jump({ count = 1, float = true })
  end, "Go to next diagnostic"),

  _G.Map('[d', function()
    vim.diagnostic.jump({ count = -1, float = true })
  end, "Go to previous diagnostic")
}
