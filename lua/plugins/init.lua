return {
  {
    -- colorscheme
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    -- indent lines
    'lukas-reineke/indent-blankline.nvim',
    event = "BufReadPre",
  },
  {
    -- LSP stuff
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'folke/neodev.nvim',
    },
  },
  {
    -- autocompletion
    'hrsh7th/nvim-cmp',
    version = false,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
  },
  {
    -- fuzzy finding
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
    }
  },
  {
    -- fuzzy finding with fzf (only install if `make` is available)
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },
  {
    -- treesitter for source code parsers
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
  },
  {
    -- for big music nerds
    "martineausimon/nvim-lilypond-suite",
    dependencies = "MunifTanjim/nui.nvim",
  },
  'akinsho/bufferline.nvim',   -- snazzy buffer/tab line
  'echasnovski/mini.pairs',    -- auto pairs
  'folke/which-key.nvim',      -- help for key mapping
  'ggandor/flit.nvim',         -- horizontal movement
  'ggandor/leap.nvim',         -- vertical movement
  'lewis6991/gitsigns.nvim',   -- git diagnostic signs
  'nvim-lualine/lualine.nvim', -- snazzy status line
  'rust-lang/rust.vim',        -- stuff for a good language
  'simrat39/rust-tools.nvim',  -- tools for a good language
  'tpope/vim-commentary',      -- commenting
  'tpope/vim-eunuch',          -- very cool stuff
  'tpope/vim-fugitive',        -- the git of GitHub
  'tpope/vim-repeat',          -- sane repeat
  'tpope/vim-rhubarb',         -- the hub of GitHub
  'tpope/vim-sleuth',          -- autodetect tabstops/shiftwidth
  'tpope/vim-speeddating',     -- incrementing dates
  'tpope/vim-surround',        -- surrounding
}
