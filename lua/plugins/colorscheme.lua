return {
    {
        "euugenechou/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme gruvbox-material]])
            vim.g.gruvbox_material_transparent_background = 1
        end,
    },
}
