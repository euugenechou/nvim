local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

local cmp = require('cmp')
local luasnip = require('luasnip')

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

lsp.setup_nvim_cmp({
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-2),
    ['<C-f>'] = cmp.mapping.scroll_docs(2),
    ['<C-n>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<C-p>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ['<S-CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
})

lsp.setup()

local nmap = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

nmap("gd", "<cmd>Telescope lsp_definitions<cr>", "goto definition")
nmap("gr", "<cmd>Telescope lsp_references<cr>", "references")
nmap("gD", vim.lsp.buf.declaration, "goto declaration")
nmap("gI", "<cmd>Telescope lsp_implementations<cr>", "goto implementation")
nmap("K", vim.lsp.buf.hover, "hover documentation")
nmap("gK", vim.lsp.buf.signature_help, "signature help")
