local colors = require("utils").colors

local theme = {
	normal = {
		a = { fg = colors.blue, bg = colors.black, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black, gui = "bold" },
		c = { fg = colors.gray, bg = colors.black },
	},
	insert = {
		a = { fg = colors.green, bg = colors.black, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black, gui = "bold" },
		c = { fg = colors.gray, bg = colors.black },
	},
	visual = {
		a = { fg = colors.magenta, bg = colors.black, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black, gui = "bold" },
		c = { fg = colors.gray, bg = colors.black },
	},
	replace = {
		a = { fg = colors.red, bg = colors.black, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black, gui = "bold" },
		c = { fg = colors.gray, bg = colors.black },
	},
	command = {
		a = { fg = colors.yellow, bg = colors.black, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black, gui = "bold" },
		c = { fg = colors.gray, bg = colors.black },
	},
	inactive = {
		a = { fg = colors.gray, bg = colors.black, gui = "bold" },
		b = { fg = colors.fg, bg = colors.black, gui = "bold" },
		c = { fg = colors.gray, bg = colors.black },
	},
}

return {
	{
		-- better tabline
		"akinsho/bufferline.nvim",
		keys = {
			{ "H", "<cmd>BufferLineCyclePrev<cr>", desc = "cycle to previous buffer" },
			{ "L", "<cmd>BufferLineCycleNext<cr>", desc = "cycle to next buffer" },
			{ "<leader>j", "<cmd>bp | sp | bn | bd<cr>", "close buffer" },
			{ "<leader>1", "<cmd>BufferLineGoToBuffer1<cr>", desc = "switch to buffer 1" },
			{ "<leader>2", "<cmd>BufferLineGoToBuffer2<cr>", desc = "switch to buffer 2" },
			{ "<leader>3", "<cmd>BufferLineGoToBuffer3<cr>", desc = "switch to buffer 3" },
			{ "<leader>4", "<cmd>BufferLineGoToBuffer4<cr>", desc = "switch to buffer 4" },
			{ "<leader>5", "<cmd>BufferLineGoToBuffer5<cr>", desc = "switch to buffer 5" },
			{ "<leader>6", "<cmd>BufferLineGoToBuffer6<cr>", desc = "switch to buffer 6" },
			{ "<leader>7", "<cmd>BufferLineGoToBuffer7<cr>", desc = "switch to buffer 7" },
			{ "<leader>8", "<cmd>BufferLineGoToBuffer8<cr>", desc = "switch to buffer 8" },
			{ "<leader>9", "<cmd>BufferLineGoToBuffer9<cr>", desc = "switch to buffer 9" },
		},
		opts = {
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
					fg = colors.gray,
					bg = colors.black,
				},
				duplicate_visible = {
					fg = colors.gray,
					bg = colors.black,
				},
				duplicate_selected = {
					fg = colors.magenta,
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
		},
	},
	{
		-- snazzy status line
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = theme,
				mode = "tabs",
				icons_enabled = false,
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename" },
				lualine_c = { "branch" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		},
	},
	{
		-- indent lines
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			scope = {
				show_start = false,
				show_end = false,
				show_exact_scope = false,
				enabled = true,
			},
		},
		init = function()
			vim.cmd("highlight IblIndent guifg=" .. colors.black)
		end,
	},
	{
		-- colorscheme
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			undercurl = false,
			underline = false,
			bold = false,
			italic = {
				strings = false,
				comments = false,
				operators = false,
				folds = false,
			},
			strikethrough = false,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true,
			dim_inactive = false,
			transparent_mode = true,
			contrast = "",
			palette_overrides = {
				dark0_hard = colors.bg,
				dark0 = colors.bg,
				dark0_soft = colors.bg,
				dark1 = colors.bg1,
				dark2 = colors.bg2,
				dark3 = colors.bg3,
				dark4 = colors.bg4,
				light0_hard = colors.fg,
				light0 = colors.fg,
				light0_soft = colors.fg,
				light1 = colors.fg,
				light2 = colors.fg,
				light3 = colors.fg,
				light4 = colors.fg,
				gray = colors.gray,
				bright_red = colors.red,
				neutral_red = colors.red,
				faded_red = colors.red,
				bright_green = colors.green,
				neutral_green = colors.green,
				faded_green = colors.green,
				bright_yellow = colors.yellow,
				neutral_yellow = colors.yellow,
				faded_yellow = colors.yellow,
				bright_blue = colors.blue,
				neutral_blue = colors.blue,
				faded_blue = colors.blue,
				bright_purple = colors.magenta,
				neutral_purple = colors.magenta,
				faded_purple = colors.magenta,
				bright_aqua = colors.cyan,
				neutral_aqua = colors.cyan,
				faded_aqua = colors.cyan,
				bright_orange = colors.orange,
				neutral_orange = colors.orange,
				faded_orange = colors.orange,
			},
			overrides = {
				-- ui
				ColorColumn = { bg = colors.bg },
				Conceal = { fg = colors.black },
				CurSearch = { fg = colors.magenta, bg = colors.bg },
				CursorColumn = { bg = colors.bg },
				CursorLine = { bg = colors.black },
				CursorLineNr = { fg = colors.fg, bg = colors.bg },
				CursorPmenu = { fg = colors.fg, bg = colors.bg },
				EndOfBuffer = { fg = colors.bg, bg = colors.bg },
				IncSearch = { fg = colors.magenta, bg = colors.bg },
				LineNr = { fg = colors.gray, bg = colors.bg },
				NonText = { fg = colors.bg, bg = colors.bg },
				NormalFloat = { bg = colors.black },
				Pmenu = { fg = colors.fg, bg = colors.black },
				PmenuSbar = { fg = colors.gray, bg = colors.black },
				PmenuSel = { fg = colors.black, bg = colors.magenta },
				Search = { fg = colors.magenta, bg = colors.bg },
				TabLine = { bg = colors.black },
				TabLineFill = { bg = colors.black },
				Visual = { bg = colors.bg1 },
				VisualNos = { bg = colors.bg1 },
				Whitespace = { fg = colors.bg, bg = colors.bg },
				WinSeparator = { fg = colors.bg1, bg = colors.bg },
				-- different background to avoid carets in status line
				StatusLine = { fg = colors.black, bg = colors.bg },
				StatusLineNC = { fg = colors.black, bg = colors.black },
				-- telescope (general)
				TelescopeBorder = { fg = colors.black, bg = colors.black },
				TelescopeNormal = { fg = colors.fg, bg = colors.black },
				-- telescope (preview)
				TelescopePreviewBlock = { fg = colors.magenta },
				TelescopePreviewBorder = { fg = colors.black, bg = colors.black },
				TelescopePreviewCharDev = { fg = colors.magenta },
				TelescopePreviewDate = { fg = colors.blue },
				TelescopePreviewDirectory = { fg = colors.cyan },
				TelescopePreviewExecute = { fg = colors.green },
				TelescopePreviewGroup = { fg = colors.yellow },
				TelescopePreviewHyphen = { fg = colors.gray },
				TelescopePreviewLine = { bg = colors.bg1 },
				TelescopePreviewLink = { fg = colors.magenta },
				TelescopePreviewMessage = { fg = colors.magenta },
				TelescopePreviewMessageFillchar = { fg = colors.magenta },
				TelescopePreviewPipe = { fg = colors.magenta },
				TelescopePreviewRead = { fg = colors.yellow },
				TelescopePreviewSize = { fg = colors.green },
				TelescopePreviewSocket = { fg = colors.magenta },
				TelescopePreviewSticky = { fg = colors.fg },
				TelescopePreviewUser = { fg = colors.yellow },
				TelescopePreviewWrite = { fg = colors.red },
				-- telescope (prompt)
				TelescopePromptBorder = { fg = colors.black, bg = colors.black },
				TelescopePromptCounter = { fg = colors.black, bg = colors.black },
				TelescopePromptPrefix = { fg = colors.magenta, bg = colors.black },
				-- telescope (results)
				TelescopeResultsBorder = { fg = colors.black, bg = colors.black },
				TelescopeResultsDiffChange = { fg = colors.cyan },
				TelescopeResultsDiffAdd = { fg = colors.green },
				TelescopeResultsDiffDelete = { fg = colors.red },
				TelescopeResultsDiffUntracked = { fg = colors.yellow },
				-- telescope (selection)
				TelescopeSelection = { fg = colors.magenta, bg = colors.bg1 },
				TelescopeSelectionCaret = { fg = colors.magenta, bg = colors.bg1 },
				-- aerial
				AerialLine = { fg = colors.magenta },
				-- code
				["@annotation"] = { fg = colors.magenta },
				["@attribute"] = { fg = colors.magenta },
				["@boolean"] = { fg = colors.magenta },
				["@character"] = { fg = colors.yellow },
				["@comment"] = { fg = colors.gray },
				["@conditional"] = { fg = colors.red },
				["@constant"] = { fg = colors.magenta },
				["@constant.builtin"] = { fg = colors.blue },
				["@constant.macro"] = { fg = colors.blue },
				["@constructor"] = { fg = colors.green },
				["@exception"] = { fg = colors.red },
				["@field"] = { fg = colors.orange },
				["@float"] = { fg = colors.purple },
				["@function"] = { fg = colors.green },
				["@function.builtin"] = { fg = colors.blue },
				["@function.macro"] = { fg = colors.blue },
				["@include"] = { fg = colors.red },
				["@keyword"] = { fg = colors.red },
				["@keyword.function"] = { fg = colors.red },
				["@keyword.operator"] = { fg = colors.red },
				["@label"] = { fg = colors.orange },
				["@method"] = { fg = colors.green },
				["@namespace"] = { fg = colors.yellow },
				["@none"] = { fg = colors.fg },
				["@number"] = { fg = colors.magenta },
				["@operator"] = { fg = colors.red },
				["@parameter"] = { fg = colors.orange },
				["@parameter.reference"] = { fg = colors.orange },
				["@property"] = { fg = colors.orange },
				["@punctuation.bracket"] = { fg = colors.fg },
				["@punctuation.delimiter"] = { fg = colors.fg },
				["@punctuation.special"] = { fg = colors.blue },
				["@repeat"] = { fg = colors.red },
				["@storageclass"] = { fg = colors.red },
				["@string"] = { fg = colors.yellow },
				["@string.escape"] = { fg = colors.yellow },
				["@string.regex"] = { fg = colors.yellow },
				["@symbol"] = { fg = colors.fg },
				["@tag"] = { fg = colors.orange },
				["@tag.delimiter"] = { fg = colors.green },
				["@text"] = { fg = colors.green },
				["@strike"] = { fg = colors.gray },
				["@math"] = { fg = colors.blue },
				["@type"] = { fg = colors.blue },
				["@type.builtin"] = { fg = colors.yellow },
				["@uri"] = { fg = colors.blue },
				["@variable"] = { fg = colors.fg },
				["@variable.builtin"] = { fg = colors.blue },
			},
		},
		init = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
}
