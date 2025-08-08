vim.cmd("packadd plenary.nvim")
vim.cmd("packadd telescope.nvim")

require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "^apps/portal%-public/src/app/fatura%-facil%-pme/",
    },
  },
})

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

local builtin = require("telescope.builtin")
Map("n", "<leader><leader>", builtin.find_files, { desc = "Find Files" })
Map("n", "<leader>g", builtin.live_grep, { desc = "Live Grep" })
Map("n", "<leader>b", builtin.buffers, { desc = "Buffers" })
Map("n", "<leader>h", builtin.help_tags, { desc = "Help Tags" })
