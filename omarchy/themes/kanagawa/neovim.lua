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
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
