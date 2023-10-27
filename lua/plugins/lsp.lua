local servers = {
	-- rust_analyzer = {
	-- 	["rust-analyzer"] = {
	-- 		cargo = { features = "all" },
	-- 	},
	-- },
	-- bashls = {},
	-- lua_ls = {
	--   Lua = {
	--     workspace = { checkThirdParty = false },
	--     telemetry = { enable = false },
	--   },
	-- },
}

-- Function to run when an LSP connects to a buffer.
local on_attach = function(_, bufnr)
	-- Create a command `:Format` local to the LSP buffer
	-- vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
	--   vim.lsp.buf.format()
	-- end, { desc = 'format current buffer with lsp' })
end

local has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

return {
	{
		-- LSP stuff
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"folke/neodev.nvim",
		},
		keys = {
			{ "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "goto definition" },
			{ "gr", vim.lsp.buf.rename, desc = "rename symbol" },
			{ "gD", vim.lsp.buf.declaration, desc = "goto declaration" },
			{ "gI", "<cmd>Telescope lsp_implementations<cr>", desc = "goto implementation" },
			{ "K", vim.lsp.buf.hover, desc = "hover documentation" },
			{ "gK", vim.lsp.buf.signature_help, desc = "signature help" },
			{ "<leader>ls", "<cmd>LspInfo<cr>", desc = "info" },
			{ "<leader>li", "<cmd>LspInstall<cr>", desc = "install" },
			{ "<leader>ll", "<cmd>LspLog<cr>", desc = "log" },
			{ "<leader>lr", "<cmd>LspRestart<cr>", desc = "restart" },
			{ "<leader>la", "<cmd>LspStart<cr>", desc = "start" },
			{ "<leader>lo", "<cmd>LspStop<cr>", desc = "stop" },
			{ "<leader>lu", "<cmd>LspUninstall<cr>", desc = "uninstall" },
			{ "<leader>lf", "<cmd>LspFormatToggle<cr>", desc = "format toggle" },
		},
		init = function()
			-- Setup neovim lua configuration.
			require("neodev").setup()

			-- Brocast nvim-cmp's additional completion capabilities to servers.
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

			-- Setup mason so it can manage external tooling
			require("mason").setup()

			-- Ensure the servers above are installed
			local mason_lspconfig = require("mason-lspconfig")

			mason_lspconfig.setup({
				ensure_installed = vim.tbl_keys(servers),
			})

			mason_lspconfig.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
						on_attach = on_attach,
						settings = servers[server_name],
					})
				end,
			})

			-- Only use treesitter highlighting.
			for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
				vim.api.nvim_set_hl(0, group, {})
			end
		end,
	},
	{
		-- autocompletion
		"hrsh7th/nvim-cmp",
		version = false,
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			luasnip.setup({
				history = true,
				delete_check_events = "TextChanged",
			})

			cmp.setup({
				completion = {
					completeopt = "menu,menuone,noselect,noinsert",
				},
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-2),
					["<C-f>"] = cmp.mapping.scroll_docs(2),
					["<C-n>"] = cmp.mapping(function(fallback)
						if luasnip.jumpable(1) then
							luasnip.jump(1)
						else
							fallback()
						end
					end, { "i", "s" }),
					["<C-p>"] = cmp.mapping(function(fallback)
						if luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
					["<S-CR>"] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = false,
					}),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif has_words_before() then
							cmp.complete()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = {
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "path" },
				},
			})
		end,
	},
}
