-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- too used to this escapism
vim.keymap.set("i", "jj", "<esc>")

-- horizontal line movement
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")
vim.keymap.set("n", "<C-h>", "<<", { desc = "Outdent" })
vim.keymap.set("v", "<C-h>", "<gv", { desc = "Outdent" })
vim.keymap.set("n", "<C-l>", ">>", { desc = "Indent" })
vim.keymap.set("v", "<C-l>", ">gv", { desc = "Indent" })

-- vertical line movement
vim.keymap.del("n", "<A-j>")
vim.keymap.del("n", "<A-k>")
vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")
vim.keymap.del("v", "<A-j>")
vim.keymap.del("v", "<A-k>")
vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- unmap window stuff
vim.keymap.del("n", "<leader>ww")
vim.keymap.del("n", "<leader>wd")
vim.keymap.del("n", "<leader>w-")
vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>|")

-- remap lazy
vim.keymap.del("n", "<leader>l")
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- lists
vim.keymap.del("n", "<leader>xl")
vim.keymap.del("n", "<leader>xq")
vim.keymap.set("n", "<leader>lq", "<cmd>copen<cr>", { desc = "Quickfix List" })
vim.keymap.set("n", "<leader>ll", "<cmd>lopen<cr>", { desc = "Location List" })

-- which-key overrides
require("which-key").register({
  w = {
    name = "save/save and quit",
    w = { ":w<cr>", "save" },
    q = { ":wq<cr>", "save and quit" },
  },
}, { prefix = "<leader>" })
