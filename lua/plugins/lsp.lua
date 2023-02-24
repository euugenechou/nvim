return {
  {
    "rhysd/vim-clang-format",
    config = function()
      vim.g["clang_format#detect_style_file"] = 1
      vim.g["clang_format#auto_format"] = 1
      vim.g["clang_format#enable_fallback_style"] = 0
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust", "rs" },
    keys = function()
      local tools = require("rust-tools")
      return {
        {
          "<leader>ru",
          function()
            tools.inlay_hints.set()
          end,
          desc = "Disable inlay hints",
        },
        {
          "<leader>rs",
          function()
            tools.inlay_hints.set()
          end,
          desc = "Enable inlay hints",
        },
      }
    end,
    config = function()
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
