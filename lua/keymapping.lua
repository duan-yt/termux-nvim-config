vim.g.mapleader = ' '
vim.g.maplocalleader = '//'

vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all' })

vim.keymap.set(
  { 'n', 'x' },
  '<leader>p',
  '0p',
  { desc = 'Paste at start of line' }
)

vim.keymap.set('n', '<leader>q', '<CMD>q<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>w', '<CMD>w<cr>', { desc = 'Save' })
vim.keymap.set('n', '<leader>W', '<CMD>wq<cr>', { desc = 'Save and Quit' })
vim.keymap.set('n', '<leader>x', '<CMD>x<cr>', { desc = 'Save and Quit (x)' })

vim.keymap.set(
  'n',
  'j',
  [[v:count > 1 ? 'j' : 'gj']],
  { noremap = true, expr = true, desc = 'Move down (smart)' }
)
vim.keymap.set(
  'n',
  'k',
  [[v:count > 1 ? 'k' : 'gk']],
  { noremap = true, expr = true, desc = 'Move up (smart)' }
)

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')

vim.keymap.set({ 'n', 'x', 'o' }, '<S-H>', '^', { desc = 'Start of line' })
vim.keymap.set({ 'n', 'x', 'o' }, '<S-L>', '$', { desc = 'End of line' })

vim.keymap.set({ 'n', 'x' }, 'Q', '<CMD>:qa<CR>')
vim.keymap.set({ 'n', 'x' }, 'qq', '<CMD>:q<CR>')

vim.keymap.set(
  'n',
  '<A-z>',
  '<CMD>set wrap!<CR>',
  { desc = 'Toggle line wrap' }
)

vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>')
