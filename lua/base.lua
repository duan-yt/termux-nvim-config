-- height the yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

-- formatting
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "LSP Format" })
-- terminal
local floating_term_win = nil
local floating_term_buf = nil

function OpenFloatingTerminal()
  floating_term_buf = vim.api.nvim_create_buf(false, true)
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)
  local opts = {
    style = "minimal",
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    border = "rounded"
  }
  floating_term_win = vim.api.nvim_open_win(floating_term_buf, true, opts)
  vim.fn.termopen(vim.o.shell)
  vim.cmd("startinsert")
end

function CloseFloatingTerminal()
  if floating_term_win and vim.api.nvim_win_is_valid(floating_term_win) then
    vim.api.nvim_win_close(floating_term_win, true)
  end
end

vim.api.nvim_set_keymap('n', '<leader>ft', '<cmd>lua OpenFloatingTerminal()<CR>'
, { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc><Esc>', '<C-\\><C-n>:lua CloseFloatingTerminal()<CR>'
, { noremap = true, silent = true })
