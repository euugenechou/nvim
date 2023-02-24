return {
  { "tpope/vim-eunuch" },
  { "tpope/vim-repeat" },
  { "tpope/vim-surround" },
  { "tpope/vim-unimpaired" },
  {
    "tpope/vim-fugitive",
    keys = function()
      return {
        { "<leader>gb", ":Git blame<cr>", desc = "blame" },
      }
    end,
  },
  { "tpope/vim-commentary" },
  { "junegunn/goyo.vim" },
}
