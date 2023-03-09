require('telescope').setup {
  defaults = {
    mappings = {
      i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

local nmap = function(keys, cmd, desc)
  vim.keymap.set('n', keys, cmd, { desc = desc })
end

nmap("<leader>fa", "<cmd>Telescope autocommands<cr>", "auto commands")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>", "buffers")
nmap("<leader>fc", "<cmd>Telescope command_history<cr>", "command history")
nmap("<leader>fd", "<cmd>Telescope diagnostics<cr>", "diagnostics")
nmap("<leader>ff", "<cmd>Telescope find_files<cr>", "files")
nmap("<leader>fh", "<cmd>Telescope help_tags<cr>", "help pages")
nmap("<leader>fi", "<cmd>Telescope current_buffer_fuzzy_find<cr>", "buffer")
nmap("<leader>fj", "<cmd>Telescope marks<cr>", "jump to mark")
nmap("<leader>fk", "<cmd>Telescope keymaps<cr>", "key maps")
nmap("<leader>fl", "<cmd>Telescope commands<cr>", "commands")
nmap("<leader>fm", "<cmd>Telescope man_pages sections=1,2,3,4,5,6,7,8,9<cr>", "man pages")
nmap("<leader>fo", "<cmd>Telescope vim_options<cr>", "options")
nmap("<leader>fr", "<cmd>Telescope oldfiles<cr>", "recent")
nmap("<leader>fw", "<cmd>Telescope live_grep<cr>", "words")
nmap("<leader>gc", "<cmd>Telescope git_commits<cr>", "commits")
nmap("<leader>gg", "<cmd>Telescope git_status<cr>", "status")
