require("denice.set")
require("denice.remap")

require("denice.lazy_init")

local autocmd = vim.api.nvim_create_autocmd

-- Highlight when yanking (copying) text
autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
