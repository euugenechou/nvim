return {
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            highlight = { enable = true },
            indent = { enable = false, disable = { "python" } },
            context_commentstring = { enable = false, enable_autocmd = false },
            ensure_installed = {
                "bash",
                "c",
                "haskell",
                "json",
                "lua",
                "luap",
                "markdown",
                "markdown_inline",
                "python",
                "rust",
                "toml",
                "vim",
                "yaml",
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    }
}
