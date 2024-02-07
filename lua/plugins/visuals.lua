local colors = require("utils").colors
local real_colors = require("utils").colors

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
			transparent = false,
			themes = function(colors)
				-- change highlight of some groups,
				-- the key and value will be passed respectively to "nvim_set_hl"
				return {
					ColorColumn = { bg = real_colors.bg },
					Conceal = { fg = real_colors.dark_blue },
					CurSearch = { fg = real_colors.magenta, bg = real_colors.bg },
					CursorColumn = { bg = real_colors.bg },
					CursorLine = { bg = real_colors.dark_gray:darken(0.7) },
					CursorLineNr = { fg = real_colors.fg, bg = real_colors.bg },
					CursorPmenu = { fg = real_colors.fg, bg = real_colors.bg },
					EndOfBuffer = { fg = real_colors.bg, bg = real_colors.bg },
					IncSearch = { fg = real_colors.magenta },
					LineNr = { fg = real_colors.gray, bg = real_colors.bg },
					NonText = { fg = real_colors.bg, bg = real_colors.bg },
					NormalFloat = { bg = real_colors.dark_blue },
					Pmenu = { fg = real_colors.fg, bg = real_colors.dark_blue },
					PmenuSbar = { fg = real_colors.gray, bg = real_colors.dark_blue },
					PmenuSel = { bg = real_colors.dark_gray:darken(0.7) },
					Search = { fg = real_colors.magenta },
					TabLine = { bg = real_colors.dark_blue },
					TabLineFill = { bg = real_colors.dark_blue },
					Visual = { bg = real_colors.dark_gray:darken(0.7) },
					VisualNos = { bg = real_colors.dark_gray:darken(0.7) },
					Whitespace = { fg = real_colors.bg, bg = real_colors.bg },
					WinSeparator = { fg = real_colors.dark_gray:darken(0.7), bg = real_colors.bg },
					-- different background to avoid carets in status line
					StatusLine = { fg = real_colors.dark_blue, bg = real_colors.bg },
					StatusLineNC = { fg = real_colors.dark_blue, bg = real_colors.dark_blue },
					-- telescope (general)
					TelescopeBorder = { fg = real_colors.dark_blue, bg = real_colors.dark_blue },
					TelescopeNormal = { fg = real_colors.fg, bg = real_colors.dark_blue },
					-- telescope (preview)
					TelescopePreviewBlock = { fg = real_colors.magenta },
					TelescopePreviewBorder = { fg = real_colors.dark_blue, bg = real_colors.dark_blue },
					TelescopePreviewCharDev = { fg = real_colors.magenta },
					TelescopePreviewDate = { fg = real_colors.blue },
					TelescopePreviewDirectory = { fg = real_colors.cyan },
					TelescopePreviewExecute = { fg = real_colors.green },
					TelescopePreviewGroup = { fg = real_colors.yellow },
					TelescopePreviewHyphen = { fg = real_colors.gray },
					TelescopePreviewLine = { bg = real_colors.dark_gray:darken(0.7) },
					TelescopePreviewLink = { fg = real_colors.magenta },
					TelescopePreviewMessage = { fg = real_colors.magenta },
					TelescopePreviewMessageFillchar = { fg = real_colors.magenta },
					TelescopePreviewPipe = { fg = real_colors.magenta },
					TelescopePreviewRead = { fg = real_colors.yellow },
					TelescopePreviewSize = { fg = real_colors.green },
					TelescopePreviewSocket = { fg = real_colors.magenta },
					TelescopePreviewSticky = { fg = real_colors.fg },
					TelescopePreviewUser = { fg = real_colors.yellow },
					TelescopePreviewWrite = { fg = real_colors.red },
					-- telescope (prompt)
					TelescopePromptBorder = { fg = real_colors.dark_blue, bg = real_colors.dark_blue },
					TelescopePromptCounter = { fg = real_colors.dark_blue, bg = real_colors.dark_blue },
					TelescopePromptPrefix = { fg = real_colors.magenta, bg = real_colors.dark_blue },
					-- telescope (results)
					TelescopeResultsBorder = { fg = real_colors.dark_blue, bg = real_colors.dark_blue },
					TelescopeResultsDiffChange = { fg = real_colors.cyan },
					TelescopeResultsDiffAdd = { fg = real_colors.green },
					TelescopeResultsDiffDelete = { fg = real_colors.red },
					TelescopeResultsDiffUntracked = { fg = real_colors.yellow },
					-- telescope (selection)
					TelescopeSelection = { fg = real_colors.magenta, bg = real_colors.dark_gray:darken(0.7) },
					TelescopeSelectionCaret = { fg = real_colors.magenta, bg = real_colors.dark_gray:darken(0.7) },
					-- aerial
					AerialLine = { fg = real_colors.magenta },
					-- indent-line
					IblIndent = { fg = real_colors.dark_gray:darken(0.7) },
					-- code
					["@annotation"] = { fg = real_colors.magenta },
					["@attribute"] = { fg = real_colors.magenta },
					["@boolean"] = { fg = real_colors.magenta },
					["@character"] = { fg = real_colors.yellow },
					["@comment"] = { fg = real_colors.gray },
					["@conditional"] = { fg = real_colors.red },
					["@constant"] = { fg = real_colors.magenta },
					["@constant.builtin"] = { fg = real_colors.blue },
					["@constant.macro"] = { fg = real_colors.blue },
					["@constructor"] = { fg = real_colors.green },
					["@exception"] = { fg = real_colors.red },
					["@field"] = { fg = real_colors.orange },
					["@float"] = { fg = real_colors.magenta },
					["@function"] = { fg = real_colors.green },
					["@function.builtin"] = { fg = real_colors.blue },
					["@function.macro"] = { fg = real_colors.blue },
					["@include"] = { fg = real_colors.red },
					["@keyword"] = { fg = real_colors.red },
					["@keyword.function"] = { fg = real_colors.red },
					["@keyword.operator"] = { fg = real_colors.red },
					["@label"] = { fg = real_colors.orange },
					["@method"] = { fg = real_colors.green },
					["@namespace"] = { fg = real_colors.yellow },
					["@none"] = { fg = real_colors.fg },
					["@number"] = { fg = real_colors.magenta },
					["@operator"] = { fg = real_colors.red },
					["@parameter"] = { fg = real_colors.orange },
					["@parameter.reference"] = { fg = real_colors.orange },
					["@property"] = { fg = real_colors.orange },
					["@punctuation.bracket"] = { fg = real_colors.fg },
					["@punctuation.delimiter"] = { fg = real_colors.fg },
					["@punctuation.special"] = { fg = real_colors.blue },
					["@repeat"] = { fg = real_colors.red },
					["@storageclass"] = { fg = real_colors.red },
					["@string"] = { fg = real_colors.yellow },
					["@string.escape"] = { fg = real_colors.yellow },
					["@string.regex"] = { fg = real_colors.yellow },
					["@symbol"] = { fg = real_colors.fg },
					["@tag"] = { fg = real_colors.orange },
					["@tag.delimiter"] = { fg = real_colors.green },
					["@text"] = { fg = real_colors.green },
					["@strike"] = { fg = real_colors.gray },
					["@math"] = { fg = real_colors.blue },
					["@type"] = { fg = real_colors.blue },
					["@type.builtin"] = { fg = real_colors.yellow },
					["@uri"] = { fg = real_colors.blue },
					["@variable"] = { fg = real_colors.fg },
					["@variable.builtin"] = { fg = real_colors.blue },
				}
			end,
		},
		init = function()
			vim.cmd("colorscheme one_monokai")
		end,
	},
}
