return {
	{
		-- auto pairs
		"echasnovski/mini.pairs",
		config = function()
			require("mini.pairs").unmap("i", "'", "''")
		end,
	},
	{
		-- surrounding
		"echasnovski/mini.surround",
		opts = {
			mappings = {
				add = "ys",
				delete = "ds",
				find = "",
				find_left = "",
				highlight = "hs",
				replace = "cs",
				update_n_lines = "",
				suffix_last = "",
				suffix_next = "",
			},
		},
	},
	{
		-- diagnostics
		"folke/trouble.nvim",
		lazy = false,
		keys = {
			{ "<leader>tt", "<cmd>TroubleToggle<cr>", desc = "toggle diagnostics" },
			{ "<leader>to", "<cmd>Trouble<cr>", desc = "open diagnostics" },
			{ "<leader>tc", "<cmd>TroubleClose<cr>", desc = "close diagnostics" },
			{ "<leader>tn", "<cmd>TroubleRefresh<cr>", desc = "refresh diagnostics" },
			{ "<leader>tw", "<cmd>Trouble workspace_diagnostics<cr>", desc = "workplace diagnostics" },
			{ "<leader>td", "<cmd>Trouble document_diagnostics<cr>", desc = "document diagnostics" },
			{ "<leader>tq", "<cmd>Trouble quickfix<cr>", desc = "quickfix diagnostics" },
			{ "<leader>tl", "<cmd>Trouble loclist<cr>", desc = "loclist diagnostics" },
			{ "<leader>tr", "<cmd>Trouble lsp_references<cr>", desc = "lsp references diagnostics" },
		},
		opts = {
			icons = false,
			fold_open = "v",
			fold_closed = ">",
			indent_lines = false,
			signs = {
				error = "error",
				warning = "warn",
				hint = "hint",
				information = "info",
			},
			use_diagnostic_signs = true,
		},
	},
	{
		-- help for key mapping
		"folke/which-key.nvim",
		opts = {
			plugins = { spelling = true },
		},
		config = function()
			require("which-key").register({
				mode = { "n", "v" },
				["<leader>a"] = { name = "+aerial" },
				["<leader>f"] = { name = "+find" },
				["<leader>g"] = { name = "+git" },
				["<leader>h"] = { name = "+harpoon" },
				["<leader>l"] = { name = "+lsp" },
				["<leader>p"] = { name = "+oil" },
				["<leader>s"] = { name = "+search" },
				["<leader>t"] = { name = "+trouble" },
			})
		end,
	},
	{
		-- horizontal movement
		"ggandor/flit.nvim",
		opts = {
			labeled_modes = "nx",
			multiline = false,
		},
	},
	{
		-- vertical movement
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings(true)
		end,
	},
	{
		-- formatting
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort" },
				rust = { "rustfmt" },
				c = { "clang_format" },
				["_"] = { "trim_whitespace" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			notify_on_error = false,
		},
	},
	{
		-- file explorer
		"stevearc/oil.nvim",
		opts = {
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
		},
		lazy = false,
		keys = {
			{ "<leader>po", "<cmd>Oil .<cr>", desc = "open current directory" },
			{ "<leader>pp", "<cmd>Oil<cr>", desc = "open parent directory" },
		},
	},
	{
		-- marking and jumping
		"ThePrimeagen/harpoon",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"stevearc/aerial.nvim",
		opts = {},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		keys = {
			{ "<leader>at", "<cmd>AerialToggle<cr>", desc = "toggle sidebar" },
			{ "<leader>aw", "<cmd>AerialNavToggle<cr>", desc = "toggle nav window" },
			{ "<leader>an", "<cmd>AerialNext<cr>", desc = "jump to next symbol" },
			{ "<leader>ap", "<cmd>AerialPrev<cr>", desc = "jump to previous symbol" },
		},
	},
	{
		-- fuzzy finding
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		lazy = false,
		keys = {
			-- finding
			{ "<leader>fa", "<cmd>Telescope autocommands<cr>", desc = "list autocommands" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "list buffers" },
			{ "<leader>fc", "<cmd>Telescope command_history<cr>", desc = "command history" },
			{ "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "list diagnostics" },
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
			{ "<leader>fi", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "find in buffer" },
			{ "<leader>fl", "<cmd>Telescope jumplist<cr>", desc = "jumplist" },
			{ "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "references" },
			{ "<leader>fs", "<cmd>Telescope aerial<cr>", desc = "aerial" },
			{ "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "find word" },

			-- searching
			{ "<leader>sc", "<cmd>Telescope git_commits<cr>", desc = "commits" },
			{ "<leader>sg", "<cmd>Telescope git_status<cr>", desc = "status" },
			{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "help pages" },
			{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "key maps" },
			{ "<leader>sl", "<cmd>Telescope commands<cr>", desc = "commands" },
			{ "<leader>sm", "<cmd>Telescope man_pages sections=1,2,3,4,5,6,7,8,9<cr>", desc = "man pages" },
			{ "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "options" },

			-- harpooning
			{ "<leader>ha", "<cmd>Telescope harpoon marks<cr>", desc = "list harpoons" },
			{
				"<leader>hh",
				function()
					return require("harpoon.mark").add_file()
				end,
				desc = "harpoon file",
			},
		},
		opts = {
			defaults = {
				prompt_prefix = "   ",
				entry_prefix = "  ",
				initial_mode = "insert",
				selection_strategy = "reset",
				sorting_strategy = "ascending",
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						preview_width = 0.5,
						results_width = 0.8,
					},
					vertical = {
						mirror = false,
					},
					width = 0.8,
					height = 0.8,
				},
				mappings = {
					i = {
						["<C-j>"] = function(...)
							return require("telescope.actions").move_selection_next(...)
						end,
						["<C-k>"] = function(...)
							return require("telescope.actions").move_selection_previous(...)
						end,
						["<C-n>"] = function(...)
							return require("telescope.actions").cycle_history_next(...)
						end,
						["<C-p>"] = function(...)
							return require("telescope.actions").cycle_history_prev(...)
						end,
						["<C-e>"] = function(...)
							return require("telescope.actions").preview_scrolling_down(...)
						end,
						["<C-y>"] = function(...)
							return require("telescope.actions").preview_scrolling_up(...)
						end,
					},
					n = {
						["<C-j>"] = function(...)
							return require("telescope.actions").move_selection_next(...)
						end,
						["<C-k>"] = function(...)
							return require("telescope.actions").move_selection_previous(...)
						end,
						["<C-e>"] = function(...)
							return require("telescope.actions").preview_scrolling_down(...)
						end,
						["<C-y>"] = function(...)
							return require("telescope.actions").preview_scrolling_up(...)
						end,
						["<C-c>"] = function(...)
							return require("telescope.actions").close(...)
						end,
					},
				},
			},
		},
		init = function()
			-- Load extensions.
			-- require("telescope").load_extension("file_browser")
			require("telescope").load_extension("harpoon")
			require("telescope").load_extension("aerial")
			pcall(require("telescope").load_extension, "fzf") -- `pcall` is for handling errors.
		end,
	},
	{
		-- fuzzy finding with fzf (only install if `make` is available)
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		cond = function()
			return vim.fn.executable("make") == 1
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		opts = {},
		keys = {
			{ "<leader>pt", "<cmd>NvimTreeToggle<cr>", desc = "toggle explorer" },
		},
	},
}
