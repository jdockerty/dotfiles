-- In order to modify the `lspconfig` configuration:
{
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
} 

{
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
        "gopls",
        "jsonnet-language-server"

      },
    },
  },
