local colors = require("utils").colors

local theme = {
	normal = {
		a = { fg = colors.blue, bg = colors.dark_blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.dark_blue, gui = "bold" },
		c = { fg = colors.gray, bg = colors.dark_blue },
	},
	insert = {
		a = { fg = colors.green, bg = colors.dark_blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.dark_blue, gui = "bold" },
		c = { fg = colors.gray, bg = colors.dark_blue },
	},
	visual = {
		a = { fg = colors.magenta, bg = colors.dark_blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.dark_blue, gui = "bold" },
		c = { fg = colors.gray, bg = colors.dark_blue },
	},
	replace = {
		a = { fg = colors.red, bg = colors.dark_blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.dark_blue, gui = "bold" },
		c = { fg = colors.gray, bg = colors.dark_blue },
	},
	command = {
		a = { fg = colors.yellow, bg = colors.dark_blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.dark_blue, gui = "bold" },
		c = { fg = colors.gray, bg = colors.dark_blue },
	},
	inactive = {
		a = { fg = colors.gray, bg = colors.dark_blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.dark_blue, gui = "bold" },
		c = { fg = colors.gray, bg = colors.dark_blue },
	},
}

return {
	{
		-- better tabline
		"akinsho/bufferline.nvim",
		opts = {
			options = {
				show_buffer_icons = true,
				show_buffer_close_icons = false,
				show_tab_indicators = true,
				offsets = {
					{
						filetype = "NvimTree",
						text = "",
						text_align = "center",
					},
				},
				diagnostics = "nvim_lsp",
				diagnostics_update_in_insert = true,
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
			},
			highlights = {
				fill = {
					bg = colors.dark_blue,
				},
				background = {
					fg = colors.gray,
					bg = colors.dark_blue,
				},
				tab = {
					fg = colors.gray,
					bg = colors.dark_blue,
				},
				tab_selected = {
					fg = colors.fg,
					bg = colors.dark_blue,
				},
				tab_separator = {
					fg = colors.dark_blue,
					bg = colors.dark_blue,
				},
				tab_separator_selected = {
					fg = colors.dark_blue,
					bg = colors.dark_blue,
				},
				tab_close = {
					fg = colors.red,
					bg = colors.dark_blue,
				},
				close_button = {
					bg = colors.dark_blue,
				},
				close_button_visible = {
					bg = colors.dark_blue,
				},
				close_button_selected = {
					bg = colors.dark_blue,
				},
				buffer_visible = {
					fg = colors.gray,
					bg = colors.dark_blue,
				},
				buffer_selected = {
					fg = colors.fg,
					bg = colors.dark_blue,
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
					bg = colors.dark_blue,
				},
				diagnostic_visible = {
					bg = colors.dark_blue,
				},
				diagnostic_selected = {
					bg = colors.dark_blue,
				},
				hint = {
					bg = colors.dark_blue,
				},
				hint_visible = {
					bg = colors.dark_blue,
				},
				hint_selected = {
					bg = colors.dark_blue,
				},
				hint_diagnostic = {
					bg = colors.dark_blue,
				},
				hint_diagnostic_visible = {
					bg = colors.dark_blue,
				},
				hint_diagnostic_selected = {
					bg = colors.dark_blue,
				},
				info = {
					bg = colors.dark_blue,
				},
				info_visible = {
					bg = colors.dark_blue,
				},
				info_selected = {
					bg = colors.dark_blue,
				},
				info_diagnostic = {
					bg = colors.dark_blue,
				},
				info_diagnostic_visible = {
					bg = colors.dark_blue,
				},
				info_diagnostic_selected = {
					bg = colors.dark_blue,
				},
				warning = {
					bg = colors.dark_blue,
				},
				warning_visible = {
					bg = colors.dark_blue,
				},
				warning_selected = {
					bg = colors.dark_blue,
				},
				warning_diagnostic = {
					bg = colors.dark_blue,
				},
				warning_diagnostic_visible = {
					bg = colors.dark_blue,
				},
				warning_diagnostic_selected = {
					bg = colors.dark_blue,
				},
				error = {
					bg = colors.dark_blue,
				},
				error_visible = {
					bg = colors.dark_blue,
				},
				error_selected = {
					bg = colors.dark_blue,
				},
				error_diagnostic = {
					bg = colors.dark_blue,
				},
				error_diagnostic_visible = {
					bg = colors.dark_blue,
				},
				error_diagnostic_selected = {
					bg = colors.dark_blue,
				},
				modified = {
					bg = colors.dark_blue,
				},
				modified_visible = {
					bg = colors.dark_blue,
				},
				modified_selected = {
					bg = colors.dark_blue,
				},
				duplicate = {
					fg = colors.gray,
					bg = colors.dark_blue,
				},
				duplicate_visible = {
					fg = colors.gray,
					bg = colors.dark_blue,
				},
				duplicate_selected = {
					fg = colors.magenta,
					bg = colors.dark_blue,
				},
				separator_selected = {
					fg = colors.dark_blue,
					bg = colors.dark_blue,
				},
				separator_visible = {
					fg = colors.dark_blue,
					bg = colors.dark_blue,
				},
				separator = {
					fg = colors.dark_blue,
					bg = colors.dark_blue,
				},
				indicator_visible = {
					fg = colors.dark_blue,
					bg = colors.dark_blue,
				},
				indicator_selected = {
					fg = colors.dark_blue,
					bg = colors.dark_blue,
				},
				pick_selected = {
					bg = colors.dark_blue,
				},
				pick_visible = {
					bg = colors.dark_blue,
				},
				pick = {
					bg = colors.dark_blue,
				},
				offset_separator = {
					bg = colors.dark_blue,
				},
				trunc_marker = {
					fg = colors.fg,
					bg = colors.dark_blue,
				},
			},
		},
		lazy = false,
		keys = {
			{ "H", "<cmd>BufferLineCyclePrev<cr>", desc = "cycle to previous buffer" },
			{ "L", "<cmd>BufferLineCycleNext<cr>", desc = "cycle to next buffer" },
			{ "<leader>j", "<cmd>bp | sp | bn | bd<cr>", desc = "close buffer" },
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
			indent = {
				char = "▏",
			},
			scope = {
				show_start = false,
				show_end = false,
				show_exact_scope = false,
				enabled = true,
			},
		},
	},
	{
		"cpea2506/one_monokai.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			themes = function(colors)
				-- change highlight of some groups,
				-- the key and value will be passed respectively to "nvim_set_hl"
				return {
					ColorColumn = { bg = colors.bg },
					Conceal = { fg = colors.dark_blue },
					CurSearch = { fg = colors.magenta, bg = colors.bg },
					CursorColumn = { bg = colors.bg },
					CursorLine = { bg = colors.dark_gray:darken(0.7) },
					CursorLineNr = { fg = colors.fg, bg = colors.bg },
					CursorPmenu = { fg = colors.fg, bg = colors.bg },
					EndOfBuffer = { fg = colors.bg, bg = colors.bg },
					IncSearch = { fg = colors.magenta, bg = colors.bg },
					LineNr = { fg = colors.gray, bg = colors.bg },
					NonText = { fg = colors.bg, bg = colors.bg },
					NormalFloat = { bg = colors.dark_blue },
					Pmenu = { fg = colors.fg, bg = colors.dark_blue },
					PmenuSbar = { fg = colors.gray, bg = colors.dark_blue },
					PmenuSel = { fg = colors.dark_blue, bg = colors.magenta },
					Search = { fg = colors.magenta, bg = colors.bg },
					TabLine = { bg = colors.dark_blue },
					TabLineFill = { bg = colors.dark_blue },
					Visual = { bg = colors.dark_gray:darken(0.7) },
					VisualNos = { bg = colors.dark_gray:darken(0.7) },
					Whitespace = { fg = colors.bg, bg = colors.bg },
					WinSeparator = { fg = colors.dark_gray:darken(0.7), bg = colors.bg },
					-- different background to avoid carets in status line
					StatusLine = { fg = colors.dark_blue, bg = colors.bg },
					StatusLineNC = { fg = colors.dark_blue, bg = colors.dark_blue },
					-- telescope (general)
					TelescopeBorder = { fg = colors.dark_blue, bg = colors.dark_blue },
					TelescopeNormal = { fg = colors.fg, bg = colors.dark_blue },
					-- telescope (preview)
					TelescopePreviewBlock = { fg = colors.magenta },
					TelescopePreviewBorder = { fg = colors.dark_blue, bg = colors.dark_blue },
					TelescopePreviewCharDev = { fg = colors.magenta },
					TelescopePreviewDate = { fg = colors.blue },
					TelescopePreviewDirectory = { fg = colors.cyan },
					TelescopePreviewExecute = { fg = colors.green },
					TelescopePreviewGroup = { fg = colors.yellow },
					TelescopePreviewHyphen = { fg = colors.gray },
					TelescopePreviewLine = { bg = colors.dark_gray:darken(0.7) },
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
					TelescopePromptBorder = { fg = colors.dark_blue, bg = colors.dark_blue },
					TelescopePromptCounter = { fg = colors.dark_blue, bg = colors.dark_blue },
					TelescopePromptPrefix = { fg = colors.magenta, bg = colors.dark_blue },
					-- telescope (results)
					TelescopeResultsBorder = { fg = colors.dark_blue, bg = colors.dark_blue },
					TelescopeResultsDiffChange = { fg = colors.cyan },
					TelescopeResultsDiffAdd = { fg = colors.green },
					TelescopeResultsDiffDelete = { fg = colors.red },
					TelescopeResultsDiffUntracked = { fg = colors.yellow },
					-- telescope (selection)
					TelescopeSelection = { fg = colors.magenta, bg = colors.dark_gray:darken(0.7) },
					TelescopeSelectionCaret = { fg = colors.magenta, bg = colors.dark_gray:darken(0.7) },
					-- aerial
					AerialLine = { fg = colors.magenta },
					-- indent-line
					IblIndent = { fg = colors.dark_gray:darken(0.7) },
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
					["@float"] = { fg = colors.magenta },
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
				}
			end,
		},
		init = function()
			vim.cmd("colorscheme one_monokai")
		end,
	},
}
