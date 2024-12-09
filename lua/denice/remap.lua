-- [[ Basic Keymaps ]]
vim.keymap.set("n", "<leader>n", "<cmd>nohlsearch<CR>") --> MyNote:(come to this command and set it to desired state)
vim.keymap.set("i", "jj", "<Esc>")
-- vim.keymap.set("n", "q", "<Esc>")
-- vim.keymap.set("n", "jj", "<Esc>")
vim.keymap.set("n", "<C-qq", function()
	print("Take some more juice pleaseeeeeeeeee !!!!1")
end) --> Add my own text keymap
--> Add a keymap which will save the document whenever you hit  Ctrl + Enter`.
--vim.keymap.set("i", "<C-e", "<Esc>diwa")
--
-- some random test that I am typing and then something -s
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>') -- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" }) -- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
