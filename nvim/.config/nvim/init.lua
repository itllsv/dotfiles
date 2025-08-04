vim.pack.add({
	{ src = 'https://github.com/rebelot/kanagawa.nvim' },
})

vim.cmd("colorscheme kanagawa")

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.lsp.enable({ "clangd" }) 

vim.o.winborder = "rounded"

