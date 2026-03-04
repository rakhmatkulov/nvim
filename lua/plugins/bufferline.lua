return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    vim.keymap.set("n", "<leader>p", ":BufferLineCyclePrev<CR>")
    vim.keymap.set("n", "<leader>n", ":BufferLineCycleNext<CR>")
    vim.keymap.set("n", "<leader>,", ":BufferLineCloseLeft<CR>")
    vim.keymap.set("n", "<leader>.", ":BufferLineCloseRight<CR>")
    vim.keymap.set("n", "<leader>v", ":BufferLinePickClose<CR>")
    vim.keymap.set("n", "<leader>o", ":BufferLinePick<CR>")
    require("bufferline").setup({
      options = {
        mode = "buffers", -- use buffers as tabs
        diagnostics = "nvim_lsp",
        separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = true,
      },
      highlights = {
        fill = { bg = 'NONE' },
        background = { bg = 'NONE' },
        buffer_visible = { bg = 'NONE' },
        buffer_selected = { bg = 'NONE' },
      }
    })
  end,
}
