local keymap = vim.keymap

keymap.set("n", "<leader>pp", vim.cmd.Ex)
keymap.set("i", "jj", "<Esc>")

keymap.set("n", "<C-d", "<C-d>zz")
keymap.set("n", "<C-u", "<C-u>zz")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("v", "J", ":m '<+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- [[ TRY TO REMAP THESE KEYS ]]
-- 1. Add kaymap to save Add a keymap which will save the document whenever you hit  Ctrl + Enter`.
-- 2. Add keymap to exit out of Telescope
-- 3. Add keymap to exit out of Neo-tree when in an editor

keymap.set("n", "<leader>n", "<cmd>Neotree<CR>", { desc = "Open Neotree Navigation panel" })
keymap.set("n", "<leader>e", "<cmd>Neotree close<CR>", { desc = "Close Neotree Navigation panel" })

keymap.set("n", "<leader>la", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
keymap.set("n", "<leader>ma", "<cmd>Mason<CR>", { desc = "Open Mason" })

keymap.set("n", "<C-n>", "<cmd>nohlsearch<CR>") --> MyNote:(come to this command and set it to desired state)
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
keymap.set("t", "<leader>q", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Duhh.. !!!
keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- keymap.set("n", "<leader><leader>", ":so<CR>", { desk = "Source file"})

keymap.set("n", "<leader><leader>", function()
	vim.cmd("Source")
end, { desc = "Source file " })

keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")
