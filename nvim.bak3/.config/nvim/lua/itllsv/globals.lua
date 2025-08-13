Map = function(mode, mapping, command, opts)
  opts = { desc = "", noremap = true, silent = true }
  vim.keymap.set(mode, mapping, command, opts)
end
