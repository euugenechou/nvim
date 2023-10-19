local colors = require("utils").colors

require("bufferline").setup({
	options = {
		show_buffer_icons = false,
		show_buffer_close_icons = false,
		show_tab_indicators = true,
	},
	highlights = {
		fill = {
			bg = colors.black,
		},
		background = {
			fg = colors.gray,
			bg = colors.black,
		},
		tab = {
			fg = colors.gray,
			bg = colors.black,
		},
		tab_selected = {
			fg = colors.fg,
			bg = colors.black,
		},
		tab_separator = {
			fg = colors.black,
			bg = colors.black,
		},
		tab_separator_selected = {
			fg = colors.black,
			bg = colors.black,
		},
		tab_close = {
			fg = colors.red,
			bg = colors.black,
		},
		close_button = {
			bg = colors.black,
		},
		close_button_visible = {
			bg = colors.black,
		},
		close_button_selected = {
			bg = colors.black,
		},
		buffer_visible = {
			fg = colors.gray,
			bg = colors.black,
		},
		buffer_selected = {
			fg = colors.fg,
			bg = colors.black,
			bold = true,
			italic = false,
		},
		numbers = {
			fg = colors.gray,
		},
		numbers_visible = {
			fg = colors.gray,
		},
		numbers_selected = {
			fg = colors.fg,
		},
		diagnostic = {
			bg = colors.black,
		},
		diagnostic_visible = {
			bg = colors.black,
		},
		diagnostic_selected = {
			bg = colors.black,
		},
		hint = {
			bg = colors.black,
		},
		hint_visible = {
			bg = colors.black,
		},
		hint_selected = {
			bg = colors.black,
		},
		hint_diagnostic = {
			bg = colors.black,
		},
		hint_diagnostic_visible = {
			bg = colors.black,
		},
		hint_diagnostic_selected = {
			bg = colors.black,
		},
		info = {
			bg = colors.black,
		},
		info_visible = {
			bg = colors.black,
		},
		info_selected = {
			bg = colors.black,
		},
		info_diagnostic = {
			bg = colors.black,
		},
		info_diagnostic_visible = {
			bg = colors.black,
		},
		info_diagnostic_selected = {
			bg = colors.black,
		},
		warning = {
			bg = colors.black,
		},
		warning_visible = {
			bg = colors.black,
		},
		warning_selected = {
			bg = colors.black,
		},
		warning_diagnostic = {
			bg = colors.black,
		},
		warning_diagnostic_visible = {
			bg = colors.black,
		},
		warning_diagnostic_selected = {
			bg = colors.black,
		},
		error = {
			bg = colors.black,
		},
		error_visible = {
			bg = colors.black,
		},
		error_selected = {
			bg = colors.black,
		},
		error_diagnostic = {
			bg = colors.black,
		},
		error_diagnostic_visible = {
			bg = colors.black,
		},
		error_diagnostic_selected = {
			bg = colors.black,
		},
		modified = {
			bg = colors.black,
		},
		modified_visible = {
			bg = colors.black,
		},
		modified_selected = {
			bg = colors.black,
		},
		duplicate = {
			bg = colors.black,
		},
		duplicate_visible = {
			bg = colors.black,
		},
		duplicate_selected = {
			bg = colors.black,
		},
		separator_selected = {
			fg = colors.black,
			bg = colors.black,
		},
		separator_visible = {
			fg = colors.black,
			bg = colors.black,
		},
		separator = {
			fg = colors.black,
			bg = colors.black,
		},
		indicator_visible = {
			fg = colors.black,
			bg = colors.black,
		},
		indicator_selected = {
			fg = colors.black,
			bg = colors.black,
		},
		pick_selected = {
			bg = colors.black,
		},
		pick_visible = {
			bg = colors.black,
		},
		pick = {
			bg = colors.black,
		},
		offset_separator = {
			bg = colors.black,
		},
		trunc_marker = {
			fg = colors.fg,
			bg = colors.black,
		},
	},
})

local nmap = function(keys, func, desc)
	vim.keymap.set("n", keys, func, { desc = desc })
end

nmap("H", "<cmd>BufferLineCyclePrev<cr>", "cycle to previous buffer")
nmap("L", "<cmd>BufferLineCycleNext<cr>", "cycle to next buffer")
nmap("<leader>j", "<cmd>bp | sp | bn | bd<cr>", "close buffer")

nmap("<leader>1", "<cmd>BufferLineGoToBuffer1<cr>", "switch to buffer 1")
nmap("<leader>2", "<cmd>BufferLineGoToBuffer2<cr>", "switch to buffer 2")
nmap("<leader>3", "<cmd>BufferLineGoToBuffer3<cr>", "switch to buffer 3")
nmap("<leader>4", "<cmd>BufferLineGoToBuffer4<cr>", "switch to buffer 4")
nmap("<leader>5", "<cmd>BufferLineGoToBuffer5<cr>", "switch to buffer 5")
nmap("<leader>6", "<cmd>BufferLineGoToBuffer6<cr>", "switch to buffer 6")
nmap("<leader>7", "<cmd>BufferLineGoToBuffer7<cr>", "switch to buffer 7")
nmap("<leader>8", "<cmd>BufferLineGoToBuffer8<cr>", "switch to buffer 8")
nmap("<leader>9", "<cmd>BufferLineGoToBuffer9<cr>", "switch to buffer 9")
