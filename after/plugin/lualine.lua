local colors = require('utils').colors

local theme = {
  normal = {
    a = { fg = colors.blue, bg = colors.black, gui = "bold" },
    b = { fg = colors.fg, bg = colors.black, gui = "bold" },
    c = { fg = colors.gray, bg = colors.black, gui = "bold" },
  },
  insert = {
    a = { fg = colors.green, bg = colors.black, gui = "bold" },
    b = { fg = colors.fg, bg = colors.black, gui = "bold" },
    c = { fg = colors.gray, bg = colors.black, gui = "bold" },
  },
  visual = {
    a = { fg = colors.magenta, bg = colors.black, gui = "bold" },
    b = { fg = colors.fg, bg = colors.black, gui = "bold" },
    c = { fg = colors.gray, bg = colors.black, gui = "bold" },
  },
  replace = {
    a = { fg = colors.red, bg = colors.black, gui = "bold" },
    b = { fg = colors.fg, bg = colors.black, gui = "bold" },
    c = { fg = colors.gray, bg = colors.black, gui = "bold" },
  },
  command = {
    a = { fg = colors.yellow, bg = colors.black, gui = "bold" },
    b = { fg = colors.fg, bg = colors.black, gui = "bold" },
    c = { fg = colors.gray, bg = colors.black, gui = "bold" },
  },
  inactive = {
    a = { fg = colors.gray, bg = colors.black, gui = "bold" },
    b = { fg = colors.fg, bg = colors.black, gui = "bold" },
    c = { fg = colors.gray, bg = colors.black, gui = "bold" },
  },
}

require('lualine').setup({
  options = {
    theme = theme,
    mode = "tabs",
    icons_enabled = false,
    component_separators = { left = "|", right = "|" },
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "filename" },
    lualine_c = { "branch" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
})
