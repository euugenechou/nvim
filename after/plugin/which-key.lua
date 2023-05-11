local wk = require('which-key')

wk.setup({
  plugins = { spelling = true },
})

wk.register(
  {
    mode = { "n", "v" },
    ["<leader>b"] = { name = "+buffer" },
    ["<leader>f"] = { name = "+file/find" },
    ["<leader>g"] = { name = "+git" },
    ["<leader>s"] = { name = "+search" },
  }
)
