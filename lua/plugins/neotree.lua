return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {},
		keys = {
			{ "<leader>pt", "<cmd>NvimTreeToggle<cr>", desc = "toggle explorer" },
		},
	},
}
