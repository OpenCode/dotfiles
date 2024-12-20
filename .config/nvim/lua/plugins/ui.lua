return {

    -- Change theme color
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "night",
        },
    },

    -- change edgy config
    {
        "folke/edgy.nvim",
        event = "VeryLazy",
        init = function()
            vim.opt.laststatus = 3
            vim.opt.splitkeep = "screen"
        end,
        -- opts will be merged with the parent spec
        opts = {
            close_when_all_hidden = false,
            left = {
                -- Neo-tree filesystem always takes half the screen height
                {
                    title = "Files",
                    ft = "neo-tree",
                    filter = function(buf)
                        return vim.b[buf].neo_tree_source == "filesystem"
                    end,
                    size = {
                        height = 0.7,
                        width = 40,
                    },
                    pinned = true,
                    collapsed = false,
                },
                {
                    title = "Git Status",
                    ft = "neo-tree",
                    filter = function(buf)
                        return vim.b[buf].neo_tree_source == "git_status"
                    end,
                    size = {
                        width = 40,
                    },
                    pinned = true,
                    collapsed = false,
                    open = "Neotree position=bottom git_status",
                },
                -- any other neo-tree windows
                -- "neo-tree",
            },
            right = {
                {
                    title = "Symbols",
                    ft = "Outline",
                    pinned = true,
                    collapsed = false,
                    open = "SymbolsOutlineOpen",
                    size = {
                        height = 0.7,
                        width = 40,
                    },
                },
                {
                    title = "Tabs",
                    ft = "neo-tree",
                    filter = function(buf)
                        return vim.b[buf].neo_tree_source == "buffers"
                    end,
                    size = {
                        width = 40,
                    },
                    pinned = true,
                    collapsed = false,
                    open = "Neotree position=right buffers",
                },
            },
        },
    },
}
