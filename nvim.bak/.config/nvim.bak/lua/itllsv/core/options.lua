local opt = vim.opt

opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.splitbelow = true -- Horizontal splits open below
opt.splitright = true -- Vertical splits open to the right
opt.wrap = true -- Wrap long lines
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 2 -- Tab width to 2 spaces
opt.shiftwidth = 2 -- Indentation width to 2 spaces
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.scrolloff = 999 -- Keep cursor centered vertically
opt.termguicolors = true -- Enable true color support
opt.cursorline = true -- Highlight current line
opt.ignorecase = true -- Case-insensitive search
opt.smartcase = true -- Case-sensitive if search contains uppercase
opt.undofile = true -- Enable persistent undo
opt.signcolumn = "yes" -- Always show sign column
