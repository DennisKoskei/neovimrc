return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add current buffer to Harpoon list" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon quick menu" })

		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, { desc = "Select Harpoon list [1]" })
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, { desc = "Select Harpoon list [2]" })
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end, { desc = "Select Harpoon list [3]" })
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end, { desc = "Select Harpoon list [4]" })
		vim.keymap.set("n", "<leader>5", function()
			harpoon:list():select(5)
		end, { desc = "Select Harpoon list [5]" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>zp", function()
			harpoon:list():prev()
		end, { desc = "Go to [p]revious harpoon saved File" })
		vim.keymap.set("n", "<leader>zn", function()
			harpoon:list():next()
		end, { desc = "Go to [n]ext harpoon saved File" })

		-- vim.keymap.set("n", "<leader>zc", function()
		-- 	require("harpoon.mark").clear_all_marks()
		-- end, { desc = "Harpoon: Clear all marks" })
	end,
}
