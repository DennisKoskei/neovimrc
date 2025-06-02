return {
	"laytan/cloak.nvim",
	config = function()
		require("cloak").setup({
			enabled = true,
			cloak_character = "*",
			-- The applied highlight group (colors) on the cloaking, see `:h highlight`.
			highlight_group = "Comment",
			patterns = {
				{
					-- Match any file starting with ".env".
					-- This can be a table to match multiple file patterns.
					file_pattern = {
						".env*",
						"wrangler.toml",
						".dev.vars",
					},
					-- Match an equals sign and any character after it.
					-- This can also be a table of patterns to cloak,
					-- example: cloak_pattern = { ":.+", "-.+" } for yaml files.
					cloak_pattern = "=.+",
				},
			},

			vim.keymap.set("n", "<leader>ct", function()
				require("cloak").toggle()
			end, { desc = "[C]loak [T]oggle" }),
			vim.keymap.set("n", "<leader>cp", function()
				require("cloak").uncloak_line()
			end, { desc = "[Cloak] [P]reviewLine" }),
			vim.keymap.set("n", "<leader>ce", function()
				require("cloak").enable()
			end, { desc = "[Cloak] [E]nable" }),
			vim.keymap.set("n", "<leader>cd", function()
				require("cloak").disable()
			end, { desc = "[Cloak] [D]isable" }),
		})
	end,
}
