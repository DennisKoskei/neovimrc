return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"                                                                              ",
			"                                                                              ",
			"               ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗           Z ",
			"               ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║       Z     ",
			"               ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║    z        ",
			"               ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  z          ",
			"               ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║             ",
			"               ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝             ",
			"                                                                              ",
			"                          ██████╗ ████████╗██╗    ██╗                         ",
			"                          ██╔══██╗╚══██╔══╝██║    ██║                         ",
			"                          ██████╔╝   ██║   ██║ █╗ ██║                         ",
			"                          ██╔══██╗   ██║   ██║███╗██║                         ",
			"                          ██████╔╝   ██║   ╚███╔███╔╝                         ",
			"                          ╚═════╝    ╚═╝    ╚══╝╚══╝                          ",
			"                                                                              ",
			"                                                                              ",
			"            ──────────────────────────────────────────────────────            ",
		}

		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.header.opts.position = "center"
		dashboard.section.footer.opts.position = "center"

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("SPC pf", " " .. " Find file ", "<cmd>Telescope find_files<CR>"),
			dashboard.button("e", " " .. " New file ", "<cmd>ene<CR>"),
			dashboard.button("SPC n", " " .. " Toggle file explorer ", "<cmd>Neotree<CR>"),
			dashboard.button("SPC pr", " " .. " Recent files ", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("SPC pg", " " .. " Find text ", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯 " .. " Restore Session ", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", " " .. " Quit ", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			once = true,
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded "
					.. stats.loaded
					.. "/"
					.. stats.count
					.. " plugins in "
					.. ms
					.. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
