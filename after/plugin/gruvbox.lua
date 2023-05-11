local colors = require('utils').colors

require("gruvbox").setup({
  undercurl = false,
  underline = false,
  bold = false,
  italic = false,
  strikethrough = false,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,
  dim_inactive = false,
  transparent_mode = true,
  contrast = "",
  palette_overrides = {
    dark0_hard     = colors.bg,
    dark0          = colors.bg,
    dark0_soft     = colors.bg,
    dark1          = colors.bg1,
    dark2          = colors.bg2,
    dark3          = colors.bg3,
    dark4          = colors.bg4,
    light0_hard    = colors.fg,
    light0         = colors.fg,
    light0_soft    = colors.fg,
    light1         = colors.fg,
    light2         = colors.fg,
    light3         = colors.fg,
    light4         = colors.fg,
    gray           = colors.gray,
    bright_red     = colors.red,
    neutral_red    = colors.red,
    faded_red      = colors.red,
    bright_green   = colors.green,
    neutral_green  = colors.green,
    faded_green    = colors.green,
    bright_yellow  = colors.yellow,
    neutral_yellow = colors.yellow,
    faded_yellow   = colors.yellow,
    bright_blue    = colors.blue,
    neutral_blue   = colors.blue,
    faded_blue     = colors.blue,
    bright_purple  = colors.magenta,
    neutral_purple = colors.magenta,
    faded_purple   = colors.magenta,
    bright_aqua    = colors.cyan,
    neutral_aqua   = colors.cyan,
    faded_aqua     = colors.cyan,
    bright_orange  = colors.orange,
    neutral_orange = colors.orange,
    faded_orange   = colors.orange,
  },
  overrides = {
    -- ui
    ColorColumn                = { bg = colors.bg },
    Conceal                    = { fg = colors.black },
    CurSearch                  = { fg = colors.magenta, bg = colors.bg },
    CursorColumn               = { bg = colors.bg },
    CursorLine                 = { bg = colors.black },
    CursorLineNr               = { fg = colors.magenta, bg = colors.bg },
    CursorPmenu                = { fg = colors.fg, bg = colors.bg },
    LineNr                     = { fg = colors.gray, bg = colors.bg },
    IncSearch                  = { fg = colors.magenta, bg = colors.bg },
    Pmenu                      = { fg = colors.fg, bg = colors.black },
    PmenuSel                   = { fg = colors.black, bg = colors.magenta },
    PmenuSbar                  = { bg = colors.black },
    Search                     = { fg = colors.magenta, bg = colors.bg },
    -- different background to avoid carets in status line
    StatusLine                 = { fg = colors.black, bg = colors.bg },
    StatusLineNC               = { fg = colors.black, bg = colors.black },
    -- telescope
    TelescopeNormal            = { fg = colors.fg, bg = colors.black },
    TelescopeBorder            = { fg = colors.black, bg = colors.black },
    TelescopePromptBorder      = { fg = colors.black, bg = colors.black },
    TelescopeResultsBorder     = { fg = colors.black, bg = colors.black },
    TelescopePreviewBorder     = { fg = colors.black, bg = colors.black },
    TelescopePromptCounter     = { fg = colors.black, bg = colors.black },
    TelescopeSelection         = { fg = colors.magenta, bg = colors.bg1 },
    TelescopeSelectionCaret    = { fg = colors.magenta, bg = colors.black },
    TelescopePreviewLine       = { bg = colors.bg1 },
    -- code
    ['@annotation']            = { fg = colors.magenta },
    ['@attribute']             = { fg = colors.magenta },
    ['@boolean']               = { fg = colors.magenta },
    ['@character']             = { fg = colors.yellow },
    ['@comment']               = { fg = colors.gray },
    ['@conditional']           = { fg = colors.red },
    ['@constant']              = { fg = colors.magenta },
    ['@constant.builtin']      = { fg = colors.blue },
    ['@constant.macro']        = { fg = colors.blue },
    ['@constructor']           = { fg = colors.green },
    ['@exception']             = { fg = colors.red },
    ['@field']                 = { fg = colors.orange },
    ['@float']                 = { fg = colors.purple },
    ['@function']              = { fg = colors.green },
    ['@function.builtin']      = { fg = colors.blue },
    ['@function.macro']        = { fg = colors.blue },
    ['@include']               = { fg = colors.red },
    ['@keyword']               = { fg = colors.red },
    ['@keyword.function']      = { fg = colors.red },
    ['@keyword.operator']      = { fg = colors.red },
    ['@label']                 = { fg = colors.orange },
    ['@method']                = { fg = colors.green },
    ['@namespace']             = { fg = colors.yellow },
    ['@none']                  = { fg = colors.fg },
    ['@number']                = { fg = colors.magenta },
    ['@operator']              = { fg = colors.red },
    ['@parameter']             = { fg = colors.orange },
    ['@parameter.reference']   = { fg = colors.orange },
    ['@property']              = { fg = colors.orange },
    ['@punctuation.bracket']   = { fg = colors.fg },
    ['@punctuation.delimiter'] = { fg = colors.fg },
    ['@punctuation.special']   = { fg = colors.blue },
    ['@repeat']                = { fg = colors.red },
    ['@storageclass']          = { fg = colors.red },
    ['@string']                = { fg = colors.yellow },
    ['@string.escape']         = { fg = colors.yellow },
    ['@string.regex']          = { fg = colors.yellow },
    ['@symbol']                = { fg = colors.fg },
    ['@tag']                   = { fg = colors.orange },
    ['@tag.delimiter']         = { fg = colors.green },
    ['@text']                  = { fg = colors.green },
    ['@strike']                = { fg = colors.gray },
    ['@math']                  = { fg = colors.blue },
    ['@type']                  = { fg = colors.blue },
    ['@type.builtin']          = { fg = colors.yellow },
    ['@uri']                   = { fg = colors.blue },
    ['@variable']              = { fg = colors.fg },
    ['@variable.builtin']      = { fg = colors.blue },
  },
})

vim.cmd("colorscheme gruvbox")
