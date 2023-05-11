require("telescope").load_extension('harpoon')

local nmap = function(keys, cmd, desc)
  vim.keymap.set('n', keys, cmd, { desc = desc })
end

nmap("<leader>fh", "<cmd>Telescope harpoon marks<cr>", "list harpoons")
nmap("<leader>fj", function() return require("harpoon.mark").add_file() end, "harpoon file")
nmap("<leader>fk", function() return require("harpoon.mark").rm_file() end, "unharpoon file")
