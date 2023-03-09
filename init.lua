-- Set <space> as the leader key.
-- Needs to happen before plugins are required.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Bootstrap the plugin manager.
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  spec = {
    { import = "plugins" },
  },
  defaults = {
    lazy = false,    -- Don't lazy load by default.
    version = false, -- Always use the latest git commit.
  },
  install = { colorscheme = { "gruvbox-material" } },
  checker = { enabled = false }, -- Don't auto-check for updates.
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}, {})

require('config.options')
require('config.keymaps')
require('config.autocmds')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
