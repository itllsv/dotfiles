local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities({}, false))
capabilities.textDocument.completion.completionItem.snippetSupport = true

capabilities = vim.tbl_deep_extend("force", capabilities, {
  textDocument = {
		completion = {
			completionItem = {
				snippetSupport = true
			}
		},
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    },
  },
})

vim.lsp.config("*", {
	capabilities = capabilities,
})

vim.lsp.enable({
	"clangd",
	"vue_ls",
	"ts_ls",
	"lua_ls",
	"cssls",
	"tailwindcss",
})

require("mason").setup()

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
