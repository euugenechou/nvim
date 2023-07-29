require("trouble").setup({
  icons = false,
  fold_open = "v",
  fold_closed = ">",
  indent_lines = false,
  signs = {
    error = "error",
    warning = "warn",
    hint = "hint",
    information = "info"
  },
  use_diagnostic_signs = true
})

local nmap = function(keys, cmd, desc)
  vim.keymap.set('n', keys, cmd, { desc = desc })
end

nmap("<leader>tt", "<cmd>TroubleToggle<cr>", "toggle diagnostics")
nmap("<leader>to", "<cmd>Trouble<cr>", "open diagnostics")
nmap("<leader>tc", "<cmd>TroubleClose<cr>", "close diagnostics")
nmap("<leader>tn", "<cmd>TroubleRefresh<cr>", "refresh diagnostics")
nmap("<leader>tw", "<cmd>Trouble workspace_diagnostics<cr>", "workplace diagnostics")
nmap("<leader>td", "<cmd>Trouble document_diagnostics<cr>", "document diagnostics")
nmap("<leader>tq", "<cmd>Trouble quickfix<cr>", "quickfix diagnostics")
nmap("<leader>tl", "<cmd>Trouble loclist<cr>", "loclist diagnostics")
nmap("<leader>tr", "<cmd>Trouble lsp_references<cr>", "lsp references diagnostics")
