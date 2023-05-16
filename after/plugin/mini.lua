require('mini.pairs').setup({})
require('mini.pairs').unmap('i', "'", "''")

require('mini.surround').setup({
  mappings = {
    add = 'ys',
    delete = 'ds',
    find = '',
    find_left = '',
    highlight = 'hs',
    replace = 'cs',
    update_n_lines = '',
    suffix_last = '',
    suffix_next = '',
  }
})
