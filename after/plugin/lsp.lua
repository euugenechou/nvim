-- Function to run when an LSP connects to a buffer.
local on_attach = function(_, bufnr)
  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'format current buffer with lsp' })
end

local servers = {
  rust_analyzer = {},
  bashls = {},
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}

-- Setup neovim lua configuration.
require('neodev').setup()

-- Brocast nvim-cmp's additional completion capabilities to servers.
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Setup mason so it can manage external tooling
require('mason').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
    }
  end,
}

-- nvim-cmp setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'

luasnip.setup({
  history = true,
  delete_check_events = 'TextChanged',
})

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup {
  completion = {
    completeopt = "menu,menuone,noselect,noinsert",
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
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
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  },
}

-- Command to toggle autoformatting.
local format_is_enabled = true
vim.api.nvim_create_user_command('LspFormatToggle', function()
  format_is_enabled = not format_is_enabled
  print('Autoformatting: ' .. tostring(format_is_enabled))
end, {})

-- Create an augroup that is used for managing our formatting autocmds.
-- We need one augroup per client to make sure that multiple clients can attach
-- to the same buffer without interfering with each other.
local _augroups = {}
local get_augroup = function(client)
  if not _augroups[client.id] then
    local group_name = 'lsp-format-' .. client.name
    local id = vim.api.nvim_create_augroup(group_name, { clear = true })
    _augroups[client.id] = id
  end
  return _augroups[client.id]
end

-- Whenever an LSP attaches to a buffer, we will run this function.
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp-attach-format', { clear = true }),
  callback = function(args)
    local client_id = args.data.client_id
    local client = vim.lsp.get_client_by_id(client_id)
    local bufnr = args.buf

    -- Only attach to clients that support document formatting
    if not client.server_capabilities.documentFormattingProvider then
      return
    end

    -- Create an autocmd that will run before we save the buffer.
    -- Run the formatting command for the LSP that has just attached.
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = get_augroup(client),
      buffer = bufnr,
      callback = function()
        if not format_is_enabled then
          return
        end
        vim.lsp.buf.format {
          async = false,
          filter = function(c)
            return c.id == client.id
          end,
        }
      end,
    })
  end,
})

local nmap = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

nmap("gd", "<cmd>Telescope lsp_definitions<cr>", "goto definition")
nmap("gr", "<cmd>Telescope lsp_references<cr>", "references")
nmap("gD", vim.lsp.buf.declaration, "goto declaration")
nmap("gI", "<cmd>Telescope lsp_implementations<cr>", "goto implementation")
nmap("K", vim.lsp.buf.hover, "hover documentation")
nmap("gK", vim.lsp.buf.signature_help, "signature help")

-- nmap('gr', require('telescope.builtin').lsp_references, 'goto reference')
-- nmap('gI', vim.lsp.buf.implementation, 'goto implementation')
-- nmap('<leader>D', vim.lsp.buf.type_definition, 'type [d]efinition')
-- nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[d]ocument [s]ymbols')
-- nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[w]orkspace [s]ymbols')

-- See `:help K` for why this keymap
-- nmap('K', vim.lsp.buf.hover, 'hover documentation')
-- nmap('<C-k>', vim.lsp.buf.signature_help, 'signature documentation')

-- Lesser used LSP functionality
-- nmap('gD', vim.lsp.buf.declaration, '[g]oto [d]eclaration')
-- nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[w]orkspace [a]dd folder')
-- nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[w]orkspace [r]emove folder')
-- nmap('<leader>wl', function()
--   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, '[w]orkspace [l]ist folders')
