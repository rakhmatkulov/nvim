vim.cmd('set expandtab')
vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd.colorscheme("tokyonight-night")
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>vs", ":vs<CR>")
vim.keymap.set("n", "<leader>sp", ":sp<CR>")

--Switching to normal mode
vim.api.nvim_set_keymap("i", "jj", "<ESC>", {noremap = true, silent = true})

vim.opt.cursorline = true
vim.opt.termguicolors = true

--transparent bg
vim.cmd([[ hi NormalNC guibg=NONE ctermbg=NONE ]])
vim.cmd([[ hi EndOfBuffer guibg=NONE ctermbg=NONE ]])
vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])

--Winbar transparency
vim.cmd([[hi WinBar guibg=NONE]])
vim.cmd([[hi WinBarNC guibg=NONE]])

-- Прозрачный фон NeoTree
vim.opt.fillchars:append({ eob = " " })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = "NONE", bg = "NONE" })
