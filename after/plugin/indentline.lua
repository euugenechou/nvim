local colors = require('utils').colors

vim.cmd('highlight IndentBlanklineIndent1 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent2 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent3 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent4 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent5 guifg=' .. colors.black)
vim.cmd('highlight IndentBlanklineIndent6 guifg=' .. colors.black)

require("ibl").setup {
    show_trailing_blankline_ident = false,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
