-- strip whitespace
vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
    command = "%s/\\s\\+$//e",
})

-- the proper comment style for C/C++
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp" },
    command = "setlocal commentstring=//\\ %s",
})

-- highlight yanks
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- check if file should be reloaded
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
    command = "checktime",
})
