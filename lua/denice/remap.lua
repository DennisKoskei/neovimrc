-- [[ Basic Keymaps ]]
vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "q", "<Esc>")

-- nnoremap ("<C-d", "<C-d>zz")
-- nnoremap ("<C-u", "<C-u>zz")
--
-- [[ TRY TO REMAP THESE KEYS ]]
-- 1. Add kaymap to save Add a keymap which will save the document whenever you hit  Ctrl + Enter`.
-- 2. Add keymap to exit out of Telescope

vim.keymap.set("n", "<leader>n", function()
	vim.cmd("Neotree")
end, { desc = "Open Neotree Navigation panel" })

vim.keymap.set("n", "<leader>l", function()
	vim.cmd("Lazy")
end, { desc = "Open Lazy" })

vim.keymap.set("n", "<leader>m", function()
	vim.cmd("Mason")
end, { desc = "Open Mason" })

-- <Esc>
vim.keymap.set("n", "<leader>e", "<Esc><Esc>", { desc = "Exit Telescope" })

vim.keymap.set("n", "<C-n>", "<cmd>nohlsearch<CR>") --> MyNote:(come to this command and set it to desired state)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Duhh.. !!!
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end, { desc = "Source file " })

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")
