vim.cmd [[highlight IndentBlanklineIndent1 guifg=#3c3836 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#3c3836 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#3c3836 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#3c3836 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#3c3836 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#3c3836 gui=nocombine]]

require("indent_blankline").setup {
  show_trailing_blankline_ident = false,
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
}
