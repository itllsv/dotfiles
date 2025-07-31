vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.mouse = "a"
opt.showmode = false
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes:2"
opt.foldcolumn = "1"
opt.numberwidth = 4
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 15
opt.confirm = true

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if vim.bo.filetype == "neo-tree" or vim.bo.buftype == "nofile" and vim.b.neo_tree_winid then
      vim.opt_local.foldcolumn = "0"
    end
  end,
})

vim.schedule(function()
  opt.clipboard = "unnamedplus"
end)
