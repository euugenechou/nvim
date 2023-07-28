require("aerial").setup({})

local nmap = function(keys, cmd, desc)
  vim.keymap.set('n', keys, cmd, { desc = desc })
end

nmap("<leader>at", "<cmd>AerialToggle<cr>", "toggle sidebar")
nmap("<leader>aw", "<cmd>AerialNavToggle<cr>", "toggle nav window")
nmap("<leader>an", "<cmd>AerialNext<cr>", "jump to next symbol")
nmap("<leader>ap", "<cmd>AerialPrev<cr>", "jump to previous symbol")
