return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")

		-- File commands
		wk.register({
			["<leader>f"] = { name = "+file" },
			["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
			["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Grep Files" },
			["<leader>fn"] = { "<cmd>enew<cr>", "New file" },
			["<leader>ft"] = { "<cmd>Neotree filesystem reveal left<cr>", "Open filetree" },
			["<leader>fb"] = { "<cmd>Neotree buffers reveal float<cr>", "Open buffers" },
		})

		local harpoon = require("harpoon")
		wk.register({
			["<C-e>"] = {
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				"List harpooned files",
			},
			["<leader>a"] = {
				function()
					harpoon:list():append()
				end,
				"Harpoon current file",
			},
			["<leader>d"] = {
				function()
					harpoon:list():remove()
				end,
				"Unharpoon current file",
			},
			["<leader>1"] = {
				function()
					harpoon:list():select(1)
				end,
				"Open harpooned file",
			},
			["<leader>2"] = {
				function()
					harpoon:list():select(2)
				end,
				"Open harpooned file",
			},
			["<leader>3"] = {
				function()
					harpoon:list():select(3)
				end,
				"Open harpooned file",
			},
			["<leader>4"] = {
				function()
					harpoon:list():select(4)
				end,
				"Open harpooned file",
			},
			["<leader>5"] = {
				function()
					harpoon:list():select(5)
				end,
				"Open harpooned file",
			},
		})
	end,
}
