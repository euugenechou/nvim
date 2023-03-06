vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
  command = "%s/\\s\\+$//e",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  command = "setlocal commentstring=//\\ %s",
})
