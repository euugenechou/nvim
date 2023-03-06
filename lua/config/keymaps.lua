-- better up/down
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- too used to this escapism
vim.keymap.set("i", "jj", "<esc>")

-- horizontal line movement
vim.keymap.set("n", "<C-h>", "<<", { desc = "outdent" })
vim.keymap.set("v", "<C-h>", "<gv", { desc = "outdent" })
vim.keymap.set("n", "<C-l>", ">>", { desc = "indent" })
vim.keymap.set("v", "<C-l>", ">gv", { desc = "indent" })

-- vertical line movement
vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "move down" })
vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "move up" })
vim.keymap.set("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "move down" })
vim.keymap.set("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "move up" })
vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "move down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "move up" })

-- plugins
vim.keymap.set("n", "<leader>p", "<cmd>Lazy<cr>", { desc = "plugins" })

-- quitting/saving
vim.keymap.set("n", "<leader>q", ":q<cr>", { desc = "quit" })
vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "write" })
vim.keymap.set("n", "<leader>e", ":x<cr>", { desc = "save and quit" })

-- disable highlight
vim.keymap.set("n", "<leader>h", ":noh<cr>", { desc = "disable highlighting" })

-- buffers
vim.keymap.set("n", "<S-h>", ":bp<cr>", { desc = "previous buffer" })
vim.keymap.set("n", "<S-l>", ":bn<cr>", { desc = "next buffer" })
