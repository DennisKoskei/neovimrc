local opt = vim.opt
local global = vim.g

global.mapleader = " "
global.maplocalleader = " "

global.have_nerd_font = true

global.netrw_liststyle = 3

opt.number = true
opt.relativenumber = true
opt.scrolloff = 15
opt.colorcolumn = "80"
opt.mouse = "n"

-- tabs and indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.smarttab = true
opt.smoothscroll = true

opt.backup = false
opt.swapfile = false
opt.undofile = true
-- opt.undodir = os.getenv("HOME") .. "/nvim/undodir"

opt.showmode = false
vim.schedule(function()
	opt.clipboard = "unnamedplus" -- This is used to set a global clipboard (instead of having a buffer).
end)
opt.breakindent = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.splitright = true
opt.splitbelow = true
opt.termguicolors = true
opt.inccommand = "split"
opt.cursorline = true

opt.timeoutlen = 300
opt.updatetime = 50
