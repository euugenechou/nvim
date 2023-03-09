local on_attach = function(buffer)
  local gs = package.loaded.gitsigns
  local function map(mode, l, r, desc)
    vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
  end
  map("n", "]h", gs.next_hunk, "next hunk")
  map("n", "[h", gs.prev_hunk, "prev hunk")
  map({ "n", "v" }, "<leader>gs", ":Gitsigns stage_hunk<CR>", "stage hunk")
  map({ "n", "v" }, "<leader>gr", ":Gitsigns reset_hunk<CR>", "reset hunk")
  map("n", "<leader>gS", gs.stage_buffer, "stage buffer")
  map("n", "<leader>gu", gs.undo_stage_hunk, "undo stage hunk")
  map("n", "<leader>gR", gs.reset_buffer, "reset buffer")
  map("n", "<leader>gp", gs.preview_hunk, "preview hunk")
  map("n", "<leader>gb", function() gs.blame_line({ full = true }) end, "blame line")
  map("n", "<leader>gd", gs.diffthis, "Diff This")
  map("n", "<leader>gD", function() gs.diffthis("~") end, "diff this ~")
  map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "gitsigns select hunk")
end

require('gitsigns').setup({
  signs = {
    add = { text = "▎" },
    change = { text = "▎" },
    delete = { text = "" },
    topdelete = { text = "" },
    changedelete = { text = "▎" },
    untracked = { text = "▎" },
  },
  on_attach = on_attach,
})
