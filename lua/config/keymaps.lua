local keymap = function(modes, keys, cmd, desc)
	vim.keymap.set(modes, keys, cmd, { desc = desc })
end

local keymap_silent = function(modes, keys, cmd, desc)
	vim.keymap.set(modes, keys, cmd, { desc = desc, silent = true })
end

local keymap_manual = function(modes, keys, cmd, opts)
	vim.keymap.set(modes, keys, cmd, opts)
end

-- don't move
keymap_silent({ "n", "v" }, "<Space>", "<Nop>", "freeze")

-- better up/down
keymap_manual("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap_manual("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- too used to this escapism
keymap("i", "jj", "<esc>")

-- horizontal line movement
keymap_silent("n", "<C-h>", "<<", "outdent")
keymap_silent("v", "<C-h>", "<gv", "outdent")
keymap_silent("n", "<C-l>", ">>", "indent")
keymap_silent("v", "<C-l>", ">gv", "indent")

-- plugins
keymap("n", "<leader>L", "<cmd>Lazy<cr>", "plugins")

-- quitting/saving
keymap("n", "<leader>q", ":q<cr>", "quit")
keymap("n", "<leader>w", ":w<cr>", "write")
keymap("n", "<leader>e", ":x<cr>", "save and quit")

-- disable highlight
keymap("n", "<leader>h", ":noh<cr>", "disable highlighting")
