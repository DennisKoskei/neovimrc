return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs", -- Sets main module to use for opts
	opts = {
		ensure_installed = {
			"bash",
			"python",
			"c",
			"diff",
			"html",
			"lua",
			"luadoc",
			"markdown",
			"query",
			"vim",
			"vimdoc",
			"javascript",
			"typescript",
			"tsx",
			"go",
			"rust",
			"css",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "ruby" },
		},
		indent = {
			enable = true,
			disable = { "ruby" },
		},
	},
}
