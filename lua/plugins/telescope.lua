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
            -- find
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "buffers" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
            { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "find word" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "recent" },
            -- git
            { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "commits" },
            { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "status" },
            -- search
            { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "auto commands" },
            { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "buffers" },
            { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "command history" },
            { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "commands" },
            { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "diagnostics" },
            { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "help pages" },
            { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "key maps" },
            { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "man pages" },
            { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "jump to mark" },
            { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "options" },
        }
    },
}
