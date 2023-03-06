local colors = {
    fg = "#bda988",
    bg = "#262626",
    gray = "#7d7064",
    black = "#32302f",
    red = "#c7544e",
    green = "#97a35b",
    yellow = "#bf9d4e",
    blue = "#6f9e93",
    magenta = "#bd7388",
    cyan = "#84ad7d",
    white = "#e0cfaf",
}

local theme = {
    normal = {
        a = { fg = colors.blue, bg = colors.black, gui = "bold" },
        b = { fg = colors.fg, bg = colors.black, gui = "bold" },
        c = { fg = colors.gray, bg = colors.black, gui = "bold" },
    },
    insert = {
        a = { fg = colors.green, bg = colors.black, gui = "bold" },
        b = { fg = colors.fg, bg = colors.black, gui = "bold" },
        c = { fg = colors.gray, bg = colors.black, gui = "bold" },
    },
    visual = {
        a = { fg = colors.magenta, bg = colors.black, gui = "bold" },
        b = { fg = colors.fg, bg = colors.black, gui = "bold" },
        c = { fg = colors.gray, bg = colors.black, gui = "bold" },
    },
    replace = {
        a = { fg = colors.red, bg = colors.black, gui = "bold" },
        b = { fg = colors.fg, bg = colors.black, gui = "bold" },
        c = { fg = colors.gray, bg = colors.black, gui = "bold" },
    },
    command = {
        a = { fg = colors.yellow, bg = colors.black, gui = "bold" },
        b = { fg = colors.fg, bg = colors.black, gui = "bold" },
        c = { fg = colors.gray, bg = colors.black, gui = "bold" },
    },
    inactive = {
        a = { fg = colors.gray, bg = colors.black, gui = "bold" },
        b = { fg = colors.fg, bg = colors.black, gui = "bold" },
        c = { fg = colors.gray, bg = colors.black, gui = "bold" },
    },
}

return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function()
            return {
                options = {
                    theme = theme,
                    mode = "tabs",
                    icons_enabled = false,
                    component_separators = { left = "|", right = "|" },
                    section_separators = { left = "", right = "" },
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "filename" },
                    lualine_c = { "branch" },
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
                inactive_sections = {
                    lualine_a = { "filename" },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = { "location" },
                },
            }
        end,
    },
}
