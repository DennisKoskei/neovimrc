local keymap = vim.keymap

keymap.set("n", "<leader>pp", vim.cmd.Ex, { desc = "Show Hexplore" })
keymap.set("i", "jj", "<Esc>", { desc = "Switch to Normal mode" })

keymap.set("n", "<C-d", "<C-d>zz", { desc = "Scroll document 1/2 page down, keeping cursor at  the center" })
keymap.set("n", "<C-u", "<C-u>zz", { desc = "Scroll document 1/2 page up, keeping cursor at  the center" })

keymap.set("n", "x", '"_x', { desc = "Doesn't store cut character" })

keymap.set("n", "n", "nzzzv", { desc = "Scroll half page down and center cursor" })
keymap.set("n", "N", "Nzzzv", { desc = "Scroll half up down and center cursor" })

keymap.set("v", "J", ":m '<+1<CR>gv=gv", { desc = "Move highlighed sentence down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighed sentence up" })

keymap.set("n", "yd", "gg0yGgg", { desc = "Yank Entire [d]ocument" }) -- INFO: Search for a way to keep the cursor at same position
-- keymap.set("n", "yD", "ggVG<CR>", { desc = "Highlight Entire [d]ocument" }) -- INFO: Make this work

keymap.set("n", "<leader>n", "<cmd>Neotree<CR>", { desc = "Open [N]eotree Navigation panel" })
keymap.set("n", "<leader>e", "<cmd>Neotree close<CR>", { desc = "Close Neotre[e] Navigation panel" })

keymap.set("n", "<leader>la", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
keymap.set("n", "<leader>ma", "<cmd>Mason<CR>", { desc = "Open Mason" })

keymap.set("n", "<C-n>", "<cmd>nohlsearch<CR>") --> MyNote:(come to this command and set it to desired state)

-- keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" }) -- INFO: Not working, Consider editing or deleting
-- keymap.set("t", "<leader>q", "<C-\\><CR><C-n>", { desc = "Exit terminal mode" }) -- INFO: Not working, Consider editing or deleting

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

keymap.set("n", "<leader><leader>", ":source <CR>", { desc = "Source file " })
