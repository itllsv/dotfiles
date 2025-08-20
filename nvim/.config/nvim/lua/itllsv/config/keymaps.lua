vim.keymap.set("n", "<leader>w", ":update<cr> :source<cr>", { desc = "Update and source buf" })
vim.keymap.set("n", "<leader>q", ":quit<cr>", { desc = "Quit buf" })

vim.keymap.set("n", "<esc>", ":nohlsearch<cr>", { desc = "Clean highlight search" })

vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate right window" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate left window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate top window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate bottom window" })

vim.keymap.set("n", "<A-j>", ":m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move selected lines up" })

vim.keymap.set("v", '"', 'c"<C-r>""<esc>', { desc = "Wrap selection with double quotes" })
vim.keymap.set("v", "'", "c'<C-r>\"'<esc>", { desc = "Wrap selection with single quotes" })
vim.keymap.set("v", "(", 'c(<C-r>")<esc>', { desc = "Wrap selection with parentheses" })
vim.keymap.set("v", "{", 'c{<C-r>"}<esc>', { desc = "Wrap selection with curly braces" })
vim.keymap.set("v", "[", 'c[<C-r>"]<esc>', { desc = "Wrap selection with square brackets" })
