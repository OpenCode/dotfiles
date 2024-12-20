-- return {
-- Install plugin to filter search by file type
-- {
--   url = "git@github.com:nvim-telescope/telescope-live-grep-args.nvim.git",
-- },
-- Search by file type configuration
-- {
--   "nvim-telescope/telescope.nvim",
--   dependencies = {
--     "nvim-telescope/telescope-live-grep-args.nvim",
--   },
--   keys = {
--     {
--       "<leader>sG",
--       ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
--       desc = "Global Search (with file filters)",
--     },
--   },
--   config = function()
--     require("telescope").load_extension("live_grep_args")
--   end,
-- },
-- }
return {
    -- Add files filter in search
    {
        "ibhagwan/fzf-lua",
        opts = {
            grep = {
                resume = true,
                rg_glob = true,
                glob_flag = "--iglob",
                glob_separator = "%s%-%-",
            },
        },
    },
}
