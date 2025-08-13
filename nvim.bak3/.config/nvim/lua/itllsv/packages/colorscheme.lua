vim.pack.add({
  { src = "https://github.com/vague2k/vague.nvim" },
  { src = "https://github.com/rebelot/kanagawa.nvim" },
  { src = "http://github.com/catppuccin/nvim" },
  { src = "https://github.com/rose-pine/neovim" },
})

require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  color_overrides = {
    all = {
      base = "#181825",
    },
  },
})

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
  overrides = function(colors)
    local opts = { bg = "none" }

    return {
      Normal = opts,
      NormalFloat = opts,
      FloatBorder = opts,
      NormalDark = opts,
      FloatTitle = opts,
      MasonNormal = opts,
      TelescopeTitles = opts,
      TelescopeBorder = opts,
    }
  end,
})

require("vague").setup({
  transparent = true,
})

vim.cmd.colorscheme("vague")
