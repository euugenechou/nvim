local on_attach = function(_, bufnr)
	-- code navigation
	vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "goto definition" })
	vim.keymap.set("n", "gr", vim.lsp.buf.rename, { desc = "rename symbol" })
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "goto declaration" })
	vim.keymap.set("n", "gI", "<cmd>Telescope lsp_implementations<cr>", { desc = "goto implementation" })
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "hover documentation" })
	vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { desc = "signature help" })

	-- LSP keymaps
	vim.keymap.set("n", "<leader>ls", "<cmd>LspInfo<cr>", { desc = "info" })
	vim.keymap.set("n", "<leader>li", "<cmd>LspInstall<cr>", { desc = "install" })
	vim.keymap.set("n", "<leader>ll", "<cmd>LspLog<cr>", { desc = "log" })
	vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>", { desc = "restart" })
	vim.keymap.set("n", "<leader>la", "<cmd>LspStart<cr>", { desc = "start" })
	vim.keymap.set("n", "<leader>lo", "<cmd>LspStop<cr>", { desc = "stop" })
	vim.keymap.set("n", "<leader>lu", "<cmd>LspUninstall<cr>", { desc = "uninstall" })
end

-- mega mega jank
local rust_on_attach = function(_, bufnr)
	-- code navigation
	vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "goto definition" })
	vim.keymap.set("n", "gr", vim.lsp.buf.rename, { desc = "rename symbol" })
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "goto declaration" })
	vim.keymap.set("n", "gI", "<cmd>Telescope lsp_implementations<cr>", { desc = "goto implementation" })
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "hover documentation" })
	vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { desc = "signature help" })

	-- LSP keymaps
	vim.keymap.set("n", "<leader>ls", "<cmd>LspInfo<cr>", { desc = "info" })
	vim.keymap.set("n", "<leader>li", "<cmd>LspInstall<cr>", { desc = "install" })
	vim.keymap.set("n", "<leader>ll", "<cmd>LspLog<cr>", { desc = "log" })
	vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>", { desc = "restart" })
	vim.keymap.set("n", "<leader>la", "<cmd>LspStart<cr>", { desc = "start" })
	vim.keymap.set("n", "<leader>lo", "<cmd>LspStop<cr>", { desc = "stop" })
	vim.keymap.set("n", "<leader>lu", "<cmd>LspUninstall<cr>", { desc = "uninstall" })

	-- rust specific stuff
	vim.keymap.set("n", "<leader>lS", require("rust-tools").inlay_hints.set, { desc = "enable inlay hints" })
	vim.keymap.set("n", "<leader>lU", require("rust-tools").inlay_hints.unset, { desc = "disable inlay hints" })
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
			"simrat39/rust-tools.nvim", -- mega jank
		},
		config = function()
			require("neodev").setup()
			require("mason").setup()

			-- Broadcast nvim-cmp's additional completion capabilities to servers.
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup()
			mason_lspconfig.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
						on_attach = on_attach,
					})
				end,
				["rust_analyzer"] = function()
					require("rust-tools").setup({
						tools = {
							reload_workspace_from_cargo_toml = true,
							inlay_hints = {
								auto = false,
								only_current_line = false,
								show_parameter_hints = true,
								parameter_hints_prefix = "<- ",
								other_hints_prefix = "-> ",
								max_len_align = false,
								max_len_align_padding = 1,
								right_align = false,
								right_align_padding = 7,
								highlight = "Comment",
							},
							hover_actions = {
								border = {
									{ "╭", "FloatBorder" },
									{ "─", "FloatBorder" },
									{ "╮", "FloatBorder" },
									{ "│", "FloatBorder" },
									{ "╯", "FloatBorder" },
									{ "─", "FloatBorder" },
									{ "╰", "FloatBorder" },
									{ "│", "FloatBorder" },
								},
								auto_focus = true,
							},
						},
						server = {
							settings = {
								["rust-analyzer"] = {
									cargo = { features = "all" },
								},
							},
							on_attach = rust_on_attach,
						},
						capabilities = capabilities,
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
