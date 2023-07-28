local wk = require('which-key')

wk.setup({
  plugins = { spelling = true },
})

wk.register(
  {
    mode = { "n", "v" },
    ["<leader>a"] = { name = "+aerial" },
    ["<leader>b"] = { name = "+buffer" },
    ["<leader>f"] = { name = "+find" },
    ["<leader>g"] = { name = "+git" },
    ["<leader>s"] = { name = "+search" },
    ["<leader>t"] = { name = "+browse" },
  }
)
