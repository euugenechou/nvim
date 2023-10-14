local colors = require('utils').colors

vim.cmd('highlight IblIndent guifg=' .. colors.black)

require("ibl").setup {
  scope = {
    show_start = false,
    show_end = false,
    show_exact_scope = false,
    enabled = true,
  },
}
