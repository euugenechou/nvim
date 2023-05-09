-- strip whitespace
vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
  command = "%s/\\s\\+$//e",
})

-- strip trailing blank/whitespace-only lines
vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
  command = ":%s#\\($\\n\\s*\\)\\+\\%$##e"
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
