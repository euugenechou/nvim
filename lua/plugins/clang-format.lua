return {
    {
        "rhysd/vim-clang-format",
        config = function()
            vim.g["clang_format#detect_style_file"] = 1
            vim.g["clang_format#auto_format"] = 1
            vim.g["clang_format#enable_fallback_style"] = 0
        end,
    },
}
