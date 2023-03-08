return {
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        version = false,
        opts = {
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                mappings = {
                    i = {
                        ["<C-j>"] = function(...)
                            return require("telescope.actions").move_selection_next(...)
                        end,
                        ["<C-k>"] = function(...)
                            return require("telescope.actions").move_selection_previous(...)
                        end,
                        ["<C-n>"] = function(...)
                            return require("telescope.actions").cycle_history_next(...)
                        end,
                        ["<C-p>"] = function(...)
                            return require("telescope.actions").cycle_history_prev(...)
                        end,
                        ["<C-e>"] = function(...)
                            return require("telescope.actions").preview_scrolling_down(...)
                        end,
                        ["<C-y>"] = function(...)
                            return require("telescope.actions").preview_scrolling_up(...)
                        end,
                    },
                    n = {
                        ["<C-j>"] = function(...)
                            return require("telescope.actions").move_selection_next(...)
                        end,
                        ["<C-k>"] = function(...)
                            return require("telescope.actions").move_selection_previous(...)
                        end,
                        ["<C-e>"] = function(...)
                            return require("telescope.actions").preview_scrolling_down(...)
                        end,
                        ["<C-y>"] = function(...)
                            return require("telescope.actions").preview_scrolling_up(...)
                        end,
                    },
                },
            },
        },
        keys = {
            { "<leader>fa", "<cmd>Telescope autocommands<cr>", desc = "auto commands" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "buffers" },
            { "<leader>fc", "<cmd>Telescope command_history<cr>", desc = "command history" },
            { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "diagnostics" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "files" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "help pages" },
            { "<leader>fi", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "buffer" },
            { "<leader>fj", "<cmd>Telescope marks<cr>", desc = "jump to mark" },
            { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "key maps" },
            { "<leader>fl", "<cmd>Telescope commands<cr>", desc = "commands" },
            { "<leader>fm", "<cmd>Telescope man_pages sections=1,2,3,4,5,6,7,8,9<cr>", desc = "man pages" },
            { "<leader>fo", "<cmd>Telescope vim_options<cr>", desc = "options" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "recent" },
            { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "words" },
            { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "commits" },
            { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "status" },
        }
    },
}
