return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	branch = "main",
	-- [[ Configure Treesitter ]] See `:help nvim-treesitter-intro`
	config = function()
		local parsers = {
			"bash",
			"python",
			"c",
			"diff",
			"html",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"vim",
			"vimdoc",
			"javascript",
			"typescript",
			"tsx",
			"go",
			"rust",
			"css",
		}
		require("nvim-treesitter").install(parsers)
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local buf, filetype = args.buf, args.match

				local language = vim.treesitter.language.get_lang(filetype)
				if not language then
					return
				end

				if not vim.treesitter.language.add(language) then
					return
				end

				vim.treesitter.start(buf, language)
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
