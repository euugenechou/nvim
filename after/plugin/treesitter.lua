-- pcall(require('nvim-treesitter.install').update { with_sync = true })

require('nvim-treesitter.configs').setup {
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
  indent = { enable = true, disable = { 'python' } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<M-space>',
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
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
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
}

local nmap = function(keys, cmd, desc)
  vim.keymap.set('n', keys, cmd, { desc = desc })
end

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end

nmap("]d", diagnostic_goto(true), "next diagnostic")
nmap("[d", diagnostic_goto(false), "prev diagnostic")
nmap("]e", diagnostic_goto(true, "ERROR"), "next error")
nmap("[e", diagnostic_goto(false, "ERROR"), "prev error")
nmap("]w", diagnostic_goto(true, "WARN"), "next warning")
nmap("[w", diagnostic_goto(false, "WARN"), "prev warning")
