local map = vim.keymap.set

-- Escape + Disable Highlight
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- LSP
map("n", "K", function()
  vim.lsp.buf.hover({ border = "rounded", max_height = 25, max_width = 120 })
end)

-- Don't use arrows
map("n", "<left>", '<cmd>echo "Use h to move!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move!"<CR>')
map("n", "<up>", '<cmd>echo "Use k to move!"<CR>')
map("n", "<down>", '<cmd>echo "Use j to move!"<CR>')

-- Move Line
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Window
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Buffer
map("n", "L", "<cmd>bnext<CR>", { desc = "Move focus to the next buffer" })
map("n", "H", "<cmd>bprev<CR>", { desc = "Move focus to the prev buffer" })

-- Zen
map("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Enable ZenMode" })
