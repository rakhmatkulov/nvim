return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
      require("neo-tree").setup({
        filesystem = {
          components = {
            name = function (config, node, state)
              local name = require("neo-tree.sources.filesystem.components").name(config, node, state)
              if node:get_depth() == 1 then
                name.text = vim.fs.basename(vim.loop.cwd() or "")
              end
              return name
            end,
          },
        },
      })
      vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>")
      vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")
    end,
  }
}
