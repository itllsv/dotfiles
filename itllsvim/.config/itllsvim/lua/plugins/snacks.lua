return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bufdelete = { enabled = true },
  },
  keys = {
    {
      "bd",
      function()
        Snacks.bufdelete()
      end,
      desc = "Delete current buffer",
    },
    {
      "bo",
      function()
        Snacks.bufdelete.other()
      end,
      desc = "Delete other buffer",
    },
  },
}
