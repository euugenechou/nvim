require("oil").setup({
	view_options = {
		show_hidden = true,
	},
	float = {
		border = "none",
	},
	preview = {
		border = "none",
	},
	progress = {
		border = "none",
	},
})

vim.keymap.set("n", "<leader>po", "<cmd>Oil .<cr>", { desc = "open current directory" })
vim.keymap.set("n", "<leader>pp", "<cmd>Oil<cr>", { desc = "open parent directory" })
