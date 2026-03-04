return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "pyright", "ruff"},
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("lua_ls", "pyright", "ruff")

      --keymaps
      vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>")
    end,
  },
  
}
