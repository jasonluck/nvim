return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},

	--Tabout plugin to allow us to tab out of our autopaired brackets, quotes, ..
	{
		"abecodes/tabout.nvim",
		config = function()
			require("tabout").setup()
		end,
	},
}
