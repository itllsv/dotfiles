-- vim.g.netrw_banner = 0 -- Ocultar banner
-- vim.g.netrw_liststyle = 3 -- Vista de árbol
-- vim.g.netrw_browse_split = 0 -- Abrir en ventana actual
-- vim.g.netrw_winsize = 25 -- Tamaño de ventana
-- vim.g.netrw_hide = 1 -- Ocultar archivos por defecto
-- vim.g.netrw_list_hide = "\\(^\\|\\s\\s\\)\\zs\\.\\S\\+" -- Patrón para ocultar archivos
-- Map("n", "<leader>e", ":Explore<CR>")
vim.pack.add({
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/echasnovski/mini.icons" },
})

require("mini.icons").setup({})
require("oil").setup({
  view_options = {
    show_hidden = true,
    is_hidden_file = function(name)
      return name:match("^%..*") ~= nil
    end,
    is_always_hidden = function(name)
      return name == "node_modules" or name == ".git"
    end,
  },
  keymaps = {
    ["<Esc>"] = { "actions.close", mode = "n" },
    ["<Backspace>"] = { "actions.parent", mode = "n" },
    ["H"] = { "actions.toggle_hidden", mode = "n" },
  },
})

Map("n", "<leader>e", function()
  require("oil").toggle_float()
  vim.defer_fn(function()
    require("oil").open_preview()
  end, 50)
end)
