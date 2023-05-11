require('telescope').setup {
  defaults = {
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
      },
    },
    prompt_prefix = "   ",
    selection_caret = "  ",
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
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

local nmap = function(keys, cmd, desc)
  vim.keymap.set('n', keys, cmd, { desc = desc })
end

-- Finding
nmap("<leader>fa", "<cmd>Telescope autocommands<cr>", "auto commands")
nmap("<leader>fc", "<cmd>Telescope command_history<cr>", "command history")
nmap("<leader>fd", "<cmd>Telescope diagnostics<cr>", "diagnostics")
nmap("<leader>ff", "<cmd>Telescope find_files<cr>", "files")
nmap("<leader>fi", "<cmd>Telescope current_buffer_fuzzy_find<cr>", "buffer")
nmap("<leader>fr", "<cmd>Telescope oldfiles<cr>", "recent")
nmap("<leader>fw", "<cmd>Telescope live_grep<cr>", "words")

-- Searching
nmap("<leader>sc", "<cmd>Telescope git_commits<cr>", "commits")
nmap("<leader>sg", "<cmd>Telescope git_status<cr>", "status")
nmap("<leader>sh", "<cmd>Telescope help_tags<cr>", "help pages")
nmap("<leader>sk", "<cmd>Telescope keymaps<cr>", "key maps")
nmap("<leader>sl", "<cmd>Telescope commands<cr>", "commands")
nmap("<leader>sm", "<cmd>Telescope man_pages sections=1,2,3,4,5,6,7,8,9<cr>", "man pages")
nmap("<leader>so", "<cmd>Telescope vim_options<cr>", "options")
