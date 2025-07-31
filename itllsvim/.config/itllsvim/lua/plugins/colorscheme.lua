return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    enabled = true,
    config = function()
      require("kanagawa").setup({
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function()
          return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            NormalDark = { bg = "none" },
            LazyNormal = { bg = "none" },
            MasonNormal = { bg = "none" },
            TelescopeBorder = { bg = "none" },
            TelescopeTitles = { bg = "none" },
          }
        end,
      })
      vim.cmd.colorscheme("kanagawa-wave")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    enabled = false,
    opts = {
      flavour = "mocha",
    },
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
