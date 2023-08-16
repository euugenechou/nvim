local wk = require('which-key')

wk.setup({
  plugins = { spelling = true },
})

wk.register(
  {
    mode = { "n", "v" },
    ["<leader>a"] = { name = "+aerial" },
    ["<leader>f"] = { name = "+find" },
    ["<leader>g"] = { name = "+git" },
    ["<leader>h"] = { name = "+harpoon" },
    ["<leader>l"] = { name = "+lsp" },
    ["<leader>p"] = { name = "+browse" },
    ["<leader>s"] = { name = "+search" },
    ["<leader>t"] = { name = "+trouble" },
  }
)
