vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true

vim.wo.cursorline = true
vim.opt.list = true
vim.opt.listchars = { tab = ">-", trail = "-" }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 10
vim.opt.startofline = false

vim.opt.conceallevel = 2

vim.wo.wrap = false

vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "
vim.g.maplocalleader = "//"

-- 视觉模式下按 <leader>y 复制到系统剪贴板
vim.api.nvim_set_keymap("v", "<leader>y", ":w !termux-clipboard-set<CR><CR>", { noremap = true, silent = true })

require("config.lazy")

require("keymapping")
