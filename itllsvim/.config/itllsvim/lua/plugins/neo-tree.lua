return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      use_float = true,
      popup_border_style = "rounded",
      window = {
        position = "left",
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
      filesystem = {
        filtering = {
          max_depth = 3, -- Limita a exibição a 3 níveis de profundidade
        },
        follow_current_file = {
          enabled = true,
        },
        hijack_netrw_behavior = "open_default",
        use_libuv_file_watcher = true,
        filtered_items = {
          hide_dotfiles = false,
          hide_by_name = {
            ".git",
            "node_modules",
            ".DS_Store",
          },
          always_show_by_pattern = {
            ".env*",
            ".config*",
          },
        },
      },
    })

    vim.keymap.set("n", "<leader>e", ":Neotree reveal left toggle<CR>", { noremap = true, silent = true, desc = "Toogle Neotree" })
    vim.keymap.set("n", "\\", ":Neotree reveal float toggle<CR>", { noremap = true, silent = true, desc = "Toogle Neotree" })
  end,
}
