return { -- Neo-Tree
	"nvim-neo-tree/neo-tree.nvim",
	priority = 1000,
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
		filesystem = {
			hijack_netrw_behavior = "open_current", -- "open_current", "disabled"
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false,
			},
		},
	})
	end
}
