local plugins = {

{
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
},

{
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "rust_analyzer",
        "gopls",
        "jsonnet-language-server"

      },
    },
  },
}

return plugins
