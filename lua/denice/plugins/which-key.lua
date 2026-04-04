return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	---@module 'which-key'
	---@type wk.Opts
	---@diagnostic disable-next-line: missing-fields
	opts = {
		-- delay between pressing a key and opening which-key (milliseconds)
		delay = 0,
		icons = { mappings = vim.g.have_nerd_font },

		-- Document existing key chains
		spec = {
			{ "<leader>c", group = "[C]loak" },
			{ "<leader>g", group = "[T]oggle" },
			{ "<leader>h", group = "Git [H]unk", mode = { "n", "v" } }, -- Enable gitsigns recommended keymaps first
			{ "<leader>l", group = "[L]azy..." },
			{ "<leader>m", group = "Open [M][a]son" },
			{ "<leader>s", group = "[S]earch", mode = { "n", "v" } },
			{ "<leader>t", group = "[T]oggle" },
			{ "<leader>z", group = "Harpoon Buffer Navigation" },
			{ "gr", group = "LSP Actions", mode = { "n" } },
		},
	},
}
