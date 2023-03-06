return {
    { "lukas-reineke/lsp-format.nvim" },
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        opts = {
            ensure_installed = {
                "clangd",
                "haskell-language-server",
                "rust-analyzer",
                "ruff-lsp",
                "texlab",
            },
        },
        config = function(plugin, opts)
            require("mason").setup(opts)
            local mr = require("mason-registry")
            for _, tool in ipairs(opts.ensure_installed) do
                local p = mr.get_package(tool)
                if not p:is_installed() then
                    p:install()
                end
            end
        end,
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
            "nvim-telescope/telescope.nvim",
            "lukas-reineke/lsp-format.nvim",
        },
        opts = {
            diagnostics = {
                underline = true,
                update_in_insert = false,
                virtual_text = { spacing = 4, prefix = "●" },
                severity_sort = true,
            },
            autoformat = true,
            format = {
                formatting_options = nil,
                timeout_ms = nil,
            },
            servers = {},
            setup = {},
        },
        config = function(plugin, opts)
            local servers = opts.servers
            local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

            local function setup(server)
                local server_opts = vim.tbl_deep_extend("force", {
                    capabilities = vim.deepcopy(capabilities),
                    on_attach = function(client)
                        if opts.autoformat then
                            require("lsp-format").on_attach(client)
                        end
                    end,
                }, servers[server] or {})

                if opts.setup[server] then
                    if opts.setup[server](server, server_opts) then
                        return
                    end
                elseif opts.setup["*"] then
                    if opts.setup["*"](server, server_opts) then
                        return
                    end
                end
                require("lspconfig")[server].setup(server_opts)
            end

            local mlsp = require("mason-lspconfig")
            local available = mlsp.get_available_servers()

            local ensure_installed = {}
            for server, server_opts in pairs(servers) do
                if server_opts then
                    server_opts = server_opts == true and {} or server_opts
                    if server_opts.mason == false or not vim.tbl_contains(available, server) then
                        setup(server)
                    else
                        ensure_installed[#ensure_installed + 1] = server
                    end
                end
            end

            require("mason-lspconfig").setup({ ensure_installed = ensure_installed })
            require("mason-lspconfig").setup_handlers({ setup })
        end,
        keys = function()
            local function diagnostic_goto(next, severity)
                local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
                severity = severity and vim.diagnostic.severity[severity] or nil
                return function()
                    go({ severity = severity })
                end
            end
            return {
                { "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Goto Definition" },
                { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
                { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
                { "gI", "<cmd>Telescope lsp_implementations<cr>", desc = "Goto Implementation" },
                { "K", vim.lsp.buf.hover, desc = "Hover" },
                { "gK", vim.lsp.buf.signature_help, desc = "Signature Help" },
                { "]d", diagnostic_goto(true), desc = "Next Diagnostic" },
                { "[d", diagnostic_goto(false), desc = "Prev Diagnostic" },
                { "]e", diagnostic_goto(true, "ERROR"), desc = "Next Error" },
                { "[e", diagnostic_goto(false, "ERROR"), desc = "Prev Error" },
                { "]w", diagnostic_goto(true, "WARN"), desc = "Next Warning" },
                { "[w", diagnostic_goto(false, "WARN"), desc = "Prev Warning" },
            }
        end,
    },
}
