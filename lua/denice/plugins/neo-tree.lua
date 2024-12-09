return { -- Neo-Tree
	"nvim-neo-tree/neo-tree.nvim",
	priority = 1000,
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>"),
}
