local colors = require('utils').colors

local theme = {
  fill        = { fg = colors.bg, bg = colors.bg },
  head        = { fg = colors.bg, bg = colors.bg },
  current_tab = { fg = colors.bg, bg = colors.bg },
  tab         = { fg = colors.bg, bg = colors.bg },
  win         = { fg = colors.gray, bg = colors.bg },
  tail        = { fg = colors.green, bg = colors.bg },
}

require('tabby.tabline').set(function(line)
  return {
    {
      { '', hl = theme.head },
      line.sep(' ', theme.head, theme.fill),
    },
    line.tabs().foreach(function(tab)
      local hl = tab.is_current() and theme.current_tab or theme.tab
      return {
        line.sep(' ', hl, theme.fill),
        tab.is_current() and '' or '󰆣',
        tab.number(),
        tab.name(),
        tab.close_btn(''),
        line.sep(' ', hl, theme.fill),
        hl = hl,
        margin = ' ',
      }
    end),
    line.spacer(),
    line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
      return {
        line.sep(' ', theme.win, theme.fill),
        '',
        win.buf_name(),
        line.sep(' ', theme.win, theme.fill),
        hl = theme.win,
        margin = ' ',
      }
    end),
    {
      line.sep(' ', theme.tail, theme.fill),
      { ' ', hl = theme.tail },
    },
    hl = theme.fill,
  }
end)
