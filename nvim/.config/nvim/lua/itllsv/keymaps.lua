Map("n", "<leader>w", ":w<CR>")
Map("n", "<leader>W", ":w | so<CR>")

Map("n", "<C-h>", "<C-w>h")
Map("n", "<C-j>", "<C-w>j")
Map("n", "<C-k>", "<C-w>k")
Map("n", "<C-l>", "<C-w>l")

Map("n", "<A-j>", ":m .+1<CR>==")
Map("n", "<A-k>", ":m .-2<CR>==")
Map("v", "<A-j>", ":m '>+1<CR>gv=gv")
Map("v", "<A-k>", ":m '<-2<CR>gv=gv")

Map("n", "H", ":bprevious<CR>")
Map("n", "L", ":bnext<CR>")
