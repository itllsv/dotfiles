local leader = " "
vim.g.mapleader = leader
vim.g.maplocalleader = leader

local keymap = vim.keymap
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Escape with nohl" })
keymap.set("n", "<C-h>", "<C-w><C-h>", {})
keymap.set("n", "<C-l>", "<C-w><C-l>")
keymap.set("n", "<C-j>", "<C-w><C-j>")
keymap.set("n", "<C-k>", "<C-w><C-k>")
