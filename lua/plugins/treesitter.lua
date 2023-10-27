local diagnostic_goto = function(next, severity)
	local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
	severity = severity and vim.diagnostic.severity[severity] or nil
	return function()
		go({ severity = severity })
	end
end

return {
	{
		-- treesitter for source code parsers
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		keys = {
			{ "]d", diagnostic_goto(true), desc = "next diagnostic" },
			{ "[d", diagnostic_goto(false), desc = "prev diagnostic" },
			{ "]e", diagnostic_goto(true, "ERROR"), desc = "next error" },
			{ "[e", diagnostic_goto(false, "ERROR"), desc = "prev error" },
			{ "]w", diagnostic_goto(true, "WARN"), desc = "next warning" },
			{ "[w", diagnostic_goto(false, "WARN"), desc = "prev warning" },
		},
		config = function()
			-- pcall(require('nvim-treesitter.install').update { with_sync = true })

			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					-- 'bash',
					-- 'cpp',
					-- 'gitcommit',
					-- 'gitignore',
					-- 'haskell',
					-- 'help',
					-- 'lua',
					-- 'markdown',
					-- 'markdown_inline',
					-- 'python',
					-- 'rust',
					-- 'toml',
					-- 'vim',
					-- 'yaml',
				},

				auto_install = false,

				highlight = { enable = true },
				indent = { enable = true, disable = { "python" } },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<c-space>",
						node_incremental = "<c-space>",
						scope_incremental = "<c-s>",
						node_decremental = "<M-space>",
					},
				},

				textobjects = {
					select = {
						enable = true,
						lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
						keymaps = {
							-- You can use the capture groups defined in textobjects.scm
							-- ['aa'] = '@parameter.outer',
							-- ['ia'] = '@parameter.inner',
							-- ['af'] = '@function.outer',
							-- ['if'] = '@function.inner',
							-- ['ac'] = '@class.outer',
							-- ['ic'] = '@class.inner',
						},
					},
					move = {
						enable = true,
						set_jumps = true, -- whether to set jumps in the jumplist
						goto_next_start = {
							["]m"] = "@function.outer",
							["]]"] = "@class.outer",
						},
						goto_next_end = {
							["]M"] = "@function.outer",
							["]["] = "@class.outer",
						},
						goto_previous_start = {
							["[m"] = "@function.outer",
							["[["] = "@class.outer",
						},
						goto_previous_end = {
							["[M"] = "@function.outer",
							["[]"] = "@class.outer",
						},
					},
					swap = {
						enable = true,
						swap_next = {
							-- ['<leader>a'] = '@parameter.inner',
						},
						swap_previous = {
							-- ['<leader>A'] = '@parameter.inner',
						},
					},
				},
			})
		end,
	},
}
