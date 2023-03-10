local colors = require('utils').colors

local default = {
  fg = colors.fg,
  bg = colors.bg,
  sp = colors.bg,
  bold = false,
  italic = false,
}

require('bufferline').setup({
  options = {
    diagnostics = false,
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_buffer_default_icon = false,
    show_duplicate_prefix = false,
    show_close_icon = false,
    show_tab_indicators = false,
    always_show_bufferline = false,
    separator_style = "thin",
  },
  highlights = {
    fill = {
      fg = colors.bg,
      bg = colors.bg,
    },
    background = {
      fg = colors.gray,
      bg = colors.bg,
    },
    tab = {
      fg = colors.fg,
      bg = colors.bg,
    },
    tab_selected = {
      fg = colors.gray,
      bg = colors.bg,
    },
    tab_close = default,
    close_button_visible = default,
    close_button_selected = default,
    buffer_visible = default,
    buffer_selected = default,
    numbers = default,
    numbers_visible = default,
    numbers_selected = default,
    diagnostic = default,
    diagnostic_visible = default,
    diagnostic_selected = default,
    hint = default,
    hint_visible = default,
    hint_selected = default,
    hint_diagnostic = default,
    hint_diagnostic_visible = default,
    hint_diagnostic_selected = default,
    info = default,
    info_visible = default,
    info_selected = default,
    info_diagnostic = default,
    info_diagnostic_visible = default,
    info_diagnostic_selected = default,
    warning = default,
    warning_visible = default,
    warning_selected = default,
    warning_diagnostic = default,
    warning_diagnostic_visible = default,
    warning_diagnostic_selected = default,
    error = default,
    error_visible = default,
    error_selected = default,
    error_diagnostic = default,
    error_diagnostic_visible = default,
    error_diagnostic_selected = default,
    modified = default,
    modified_visible = default,
    modified_selected = default,
    duplicate_selected = default,
    duplicate_visible = default,
    duplicate = default,
    separator_selected = default,
    separator_visible = default,
    separator = default,
    indicator_selected = default,
    pick_selected = default,
    pick_visible = default,
    pick = default,
    offset_separator = default,
  },
})

local keymap = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

keymap("<S-h>", "<cmd>BufferLineCyclePrev<cr>", "previous buffer")
keymap("<S-l>", "<cmd>BufferLineCycleNext<cr>", "next buffer")
keymap("<leader>bd", "<cmd>bd<cr>", "close buffer")
keymap("<leader>bp", "<cmd>BufferLineTogglePin<cr>", "toggle pin")
keymap("<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", "delete unpinned buffers")
