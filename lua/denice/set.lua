vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 15
vim.opt.colorcolumn = "80"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.backup = false
vim.opt.swapfile = false
-- vim.opt.undodir = os.getenv("HOME") .. "/nvim/undodir"
-- vim.opt.undofile = true

vim.opt.showmode = false
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus" -- This is used to set a global clipboard (instead of having a buffer).
end)
vim.opt.breakindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = "»» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split"
vim.opt.cursorline = true

vim.opt.timeoutlen = 300
vim.opt.updatetime = 50
