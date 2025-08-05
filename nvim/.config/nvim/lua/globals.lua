_G.Map = function(key, command, desc, mode)
  mode = mode or "n"
  vim.keymap.set(mode, key, command, { noremap = true, silent = true, desc = desc })
end
