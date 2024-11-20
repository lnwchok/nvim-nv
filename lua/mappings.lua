require 'nvchad.mappings'

local map = vim.keymap.set

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<ESC>')
map('t', '<A-\\>', '<C-\\><C-n>', { desc = 'Exit Terminal Mode' })

map('n', '<C-a>', 'ggVG')
map('n', '<F4>', '<cmd>source %<CR>', { desc = 'Execute this file' })

-- Resize Buffer
map('n', '<A-Left>', '<C-w>5>')
map('n', '<A-Right>', '<C-w>5<')
map('n', '<A-Up>', '<C-w>+')
map('n', '<A-Down>', '<C-w>-')

-- Move Text
map('v', '<A-j>', ":m '>+1<CR>gv=gv")
map('v', '<A-k>', ":m '<-2<CR>gv=gv")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
