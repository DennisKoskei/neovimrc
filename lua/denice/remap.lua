local keymap = vim.keymap

keymap.set("i", "jj", "<Esc>", { desc = "Switch to Normal mode" })
keymap.set("i", "JJ", '<cmd>echo "!! Currently in Caps. Use jj to Exit to NORMAL MODE"<CR>')

keymap.set("n", "<C-d", "<C-d>zz", { desc = "Scroll half page down and center cursor" })
keymap.set("n", "<C-u", "<C-u>zz", { desc = "Scroll half page up and center cursor" })

keymap.set("i", "<C-j>", "<Esc>o", { desc = "New line below" })
keymap.set("i", "<C-u>", "<Esc>O", { desc = "New line above" })

keymap.set("n", "x", '"_x', { desc = "Doesn't store cut character" })

keymap.set("n", "<leader><leader>", ":wall<CR>", { desc = "Save All files" })

keymap.set("v", "J", ":m '<+1<CR>gv=gv", { desc = "Move highlighed sentence down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighed sentence up" })

keymap.set("n", "yd", "mygg0yG`y", { desc = "Yank Entire [d]ocument and return cursor" })
keymap.set("n", "<leader>v", "ggVG", { desc = "Select entire document" })

keymap.set("n", "\\", "<cmd>Neotree reveal<CR>", { desc = "Open Neotree Navigation panel" })
keymap.set("n", "<leader>e", "<cmd>Neotree close<CR>", { desc = "Close Neotre[e] Navigation panel" })

keymap.set("n", "<leader>la", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
keymap.set("n", "<leader>ma", "<cmd>Mason<CR>", { desc = "Open Mason" })

keymap.set("n", "<C-n>", "<cmd>nohlsearch<CR>", { desc = "Clear search Highlights" })

vim.diagnostic.config({
	update_in_insert = false,
	severity_sort = true,
	float = { border = "rounded", source = "if_many" },
	underline = { severity = { min = vim.diagnostic.severity.WARN } },

	virtual_text = true, -- Text shows up at the end of the line
	virtual_lines = false, -- Text shows up underneath the line, with virtual lines

	jump = { float = true },
})

keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

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

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
--
-- keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

keymap.set("n", "<leader>o", ":source<CR>", { desc = "S[o]urce file" })
