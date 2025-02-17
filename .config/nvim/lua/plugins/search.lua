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
