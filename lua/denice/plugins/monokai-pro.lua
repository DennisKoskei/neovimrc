return { -- Monokai Pro Theme
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		vim.cmd.colorscheme("monokai-pro-spectrum")
		vim.cmd.hi("Comment gui=none")
	end,
	config = function()
		require("monokai-pro").setup({
			transparent_background = false,
			styles = {
				comment = { italic = true },
				keyword = { italic = true }, -- any other keyword
				type = { italic = true }, -- (preferred) int, long, char, etc
				storageclass = { italic = true }, -- static, register, volatile, etc
				structure = { italic = true }, -- struct, union, enum, etc
				parameter = { italic = true }, -- parameter pass in function
				annotation = { italic = true },
				tag_attribute = { italic = true }, -- attribute of tag in reactjs
			},
			filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
			inc_search = "background", -- underline | background
			background_clear = {
				"toggleterm",
				"telescope",
				"which-key",
				"neo-tree",
			},
			plugins = {
				bufferline = {
					underline_selected = false,
					underline_visible = false,
				},
				indent_blankline = {
					context_highlight = "default", -- default | pro
					context_start_underline = false,
				},
			},
		})
		-- vim.cmd([[colorscheme monokai-pro-spectrum]])
	end,
}
