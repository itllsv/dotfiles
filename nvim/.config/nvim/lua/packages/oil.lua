return {
  vim.pack.add({ 'https://github.com/stevearc/oil.nvim' }),

  require("oil").setup({
    view_options = {
      show_hidden = true,
      is_hidden_file = function(name)
        local m = name:match("^%..*")
        return m ~= nil
      end,
      is_always_hidden = function(name)
        return name == "node_modules" or name == ".git"
      end,
    },
  }),


  _G.Map("<leader>e", '<CMD>lua require("oil").toggle_float()<CR>', "Toggle Oil float"),
}
