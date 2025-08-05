return {
  vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp-format-on-save", { clear = true }),
    callback = function(args)
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      if client and client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = "lsp-format-on-save",
          buffer = args.buf,
          callback = function()
            vim.lsp.buf.format({
              bufnr = args.buf,
              id = client.id,
              async = false,
              timeout_ms = 1000,
            })
          end,
        })
      end
    end,
  })
}
