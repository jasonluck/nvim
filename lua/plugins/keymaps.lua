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
		local harpoon = require("harpoon")

		-- File commands
		wk.register({
			["<leader>f"] = { name = "+file" },
			["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
			["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Grep Files" },
			["<leader>fn"] = { "<cmd>enew<cr>", "New file" },
			["<leader>ft"] = { "<cmd>Neotree filesystem reveal left<cr>", "Open filetree" },
			["<leader>fb"] = { "<cmd>Neotree buffers reveal float<cr>", "Open buffers" },
			["<leader>fh"] = {
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				"Find harpooned files",
			},
		})

		-- Code commands
		wk.register({
			["<leader>c"] = { name = "+code" },
			["<leader>ch"] = { vim.lsp.buf.hover, "Show docs" },
			["<leader>cf"] = { vim.lsp.buf.format, "Format File" },
			["<leader>cd"] = { vim.lsp.buf.definition, "Show definition" },
			["<leader>cr"] = { vim.lsp.buf.references, "Show references" },
			["<leader>ca"] = { vim.lsp.buf.code_action, "Code Actions" },
			["<leader>cc"] = { name = "+comment" },
			["<leader>ccl"] = { "<Plug>(comment_toggle_linewise_current)", "Comment line" },
			["<leader>ccb"] = { "<Plug>(comment_toggle_blockwise_current)", "Comment block" },
		})

		wk.register({
			["<leader>c"] = { name = "+code" },
			["<leader>cc"] = { name = "+comment" },
			["<leader>ccl"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment line" },
			["<leader>ccb"] = { "<Plug>(comment_toggle_blockwise_visual)", "Comment block" },
		}, { mode = "v" })

		-- Git commands
		wk.register({
			["<leader>g"] = { name = "+git" },
			["<leader>gp"] = { "<cmd>Gitsigns preview_hunk<cr>", "Preview hunk" },
			["<leader>gd"] = { "<cmd>Gitsigns diffthis<cr>", "Diff file" },
			["<leader>gt"] = { name = "+toggle" },
			["<leader>gtd"] = { "<cmd>Gitsigns toggle_deleted<cr>", "Toggle deleted" },
			["<leader>gtb"] = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle line blame" },
		})

		-- Navigate vim panes better
		wk.register({
			["<C-k>"] = { "<cmd>wincmd k<CR>", "Navigate to pane above" },
			["<C-j>"] = { "<cmd>wincmd j<CR>", "Navigate to pane below" },
			["<C-h>"] = { "<cmd>wincmd h<CR>", "Navigate to pane left" },
			["<C-l>"] = { "<cmd>wincmd l<CR>", "Navigate to pane right" },
		})

		-- Misc
		wk.register({
			["<leader>h"] = { "<cmd>nohlsearch<cr>", "Remove search highlighting" },
		})

		-- Harpoon Keymaps
		wk.register({
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
