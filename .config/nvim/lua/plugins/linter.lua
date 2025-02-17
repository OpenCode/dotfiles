return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Disable autoformat on save
      autoformat = false,
      -- Disable linter
      servers = {
        pyright = {
          mason = false,
          autostart = false,
        },
      },
    },
  },
}
