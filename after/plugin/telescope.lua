local actions = require("telescope.actions")
local fb_actions = require("telescope").extensions.file_browser.actions

require('telescope').setup {
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
        ["<C-j>"] = function(...) return actions.move_selection_next(...) end,
        ["<C-k>"] = function(...) return actions.move_selection_previous(...) end,
        ["<C-n>"] = function(...) return actions.cycle_history_next(...) end,
        ["<C-p>"] = function(...) return actions.cycle_history_prev(...) end,
        ["<C-e>"] = function(...) return actions.preview_scrolling_down(...) end,
        ["<C-y>"] = function(...) return actions.preview_scrolling_up(...) end,
      },
      n = {
        ["<C-j>"] = function(...) return actions.move_selection_next(...) end,
        ["<C-k>"] = function(...) return actions.move_selection_previous(...) end,
        ["<C-e>"] = function(...) return actions.preview_scrolling_down(...) end,
        ["<C-y>"] = function(...) return actions.preview_scrolling_up(...) end,
        ["<C-c>"] = function(...) return actions.close(...) end,
      },
    },
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<C-n>"] = fb_actions.create,
          ["<C-d>"] = fb_actions.remove,
          ["<C-r>"] = fb_actions.rename,
        },
        ["n"] = {
          ["n"] = fb_actions.create,
          ["d"] = fb_actions.remove,
          ["r"] = fb_actions.rename,
        },
      },
    },
  },
}

-- Load extensions.
require("telescope").load_extension("file_browser")
require("telescope").load_extension("harpoon")
require("telescope").load_extension("aerial")
pcall(require('telescope').load_extension, 'fzf') -- `pcall` is for handling errors.

local nmap = function(keys, cmd, desc)
  vim.keymap.set('n', keys, cmd, { desc = desc })
end

-- Finding
nmap("<leader>fa", "<cmd>Telescope autocommands<cr>", "list autocommands")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>", "list buffers")
nmap("<leader>fc", "<cmd>Telescope command_history<cr>", "command history")
nmap("<leader>fd", "<cmd>Telescope diagnostics<cr>", "list diagnostics")
nmap("<leader>ff", "<cmd>Telescope find_files<cr>", "find files")
nmap("<leader>fh", "<cmd>Telescope harpoon marks<cr>", "list marks")
nmap("<leader>fi", "<cmd>Telescope current_buffer_fuzzy_find<cr>", "find in buffer")
nmap("<leader>fj", function() return require("harpoon.mark").add_file() end, "mark file")
nmap("<leader>fr", "<cmd>Telescope oldfiles<cr>", "recent")
nmap("<leader>fs", "<cmd>Telescope aerial<cr>", "aerial")
nmap("<leader>fw", "<cmd>Telescope live_grep<cr>", "find word")

-- Searching
nmap("<leader>sc", "<cmd>Telescope git_commits<cr>", "commits")
nmap("<leader>sg", "<cmd>Telescope git_status<cr>", "status")
nmap("<leader>sh", "<cmd>Telescope help_tags<cr>", "help pages")
nmap("<leader>sk", "<cmd>Telescope keymaps<cr>", "key maps")
nmap("<leader>sl", "<cmd>Telescope commands<cr>", "commands")
nmap("<leader>sm", "<cmd>Telescope man_pages sections=1,2,3,4,5,6,7,8,9<cr>", "man pages")
nmap("<leader>so", "<cmd>Telescope vim_options<cr>", "options")

-- TODO: clean up
vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  "<cmd>Telescope file_browser<cr>",
  {
    desc = "Browse files",
    noremap = true,
  }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>th",
  "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
  {
    noremap = true,
    desc = "Browse files (current buffer)",
  }
)
