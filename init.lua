vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.relativenumber = true

vim.wo.cursorline = true
vim.opt.list = true
vim.opt.listchars = { tab = '>-', trail = '-' }
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'

vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 10
vim.opt.startofline = false

vim.opt.conceallevel = 2

vim.wo.wrap = false
vim.opt.textwidth = 80

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.autoread = true
vim.bo.autoread = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.termguicolors = true

vim.opt.whichwrap:append('<,>,h,l,[,],~')

require('config.lazy')

require('keymapping')
require('base')
