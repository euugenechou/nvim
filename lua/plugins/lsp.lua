return {
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust", "rs" },
    keys = {
      {
        "<leader>rs",
        function()
          require("rust-tools").inlay_hints.set()
        end,
        desc = "Enable inlay hints",
      },
      {
        "<leader>ru",
        function()
          require("rust-tools").inlay_hints.unset()
        end,
        desc = "Disable inlay hints",
      },
    },
    config = function()
      require("which-key").register({ r = { name = "RustTools" } }, { prefix = "<leader>" })
      require("rust-tools").setup({
        tools = {
          executor = require("rust-tools/executors").termopen, -- can be quickfix or termopen
          reload_workspace_from_cargo_toml = true,
          inlay_hints = {
            auto = false,
            only_current_line = false,
            show_parameter_hints = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
            max_len_align = false,
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7,
            highlight = "Comment",
          },
          hover_actions = {
            border = {
              { "╭", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╮", "FloatBorder" },
              { "│", "FloatBorder" },
              { "╯", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╰", "FloatBorder" },
              { "│", "FloatBorder" },
            },
            auto_focus = true,
          },
        },
      })
    end,
  },
}