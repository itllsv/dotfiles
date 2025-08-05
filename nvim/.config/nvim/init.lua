require("globals")
require("options")
require("packages")
require("keymaps")
require("autocmd")

vim.lsp.enable({ "clangd", "lua_ls" })
