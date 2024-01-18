-- Space as leader key
vim.g.mapleader = '\\'

-- Shortcuts
vim.keymap.set({'n', 'x', 'o'}, '<leader>h', '^')
vim.keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')


-- Basic clipboard interaction
vim.keymap.set({'n', 'x', 'v'}, 'gy', '"+y') -- copy
-- vim.keymap.set({'n', 'x', 'v'}, 'gp', '"+p') -- paste
vim.keymap.set({'n', 'x', 'v'}, 'gY', '"*y') -- copy
vim.keymap.set({'n', 'x', 'v'}, 'gP', '"*p') -- paste

-- Keep cursor centered
vim.keymap.set({'n'}, '<C-u>', '<C-u>zz')
vim.keymap.set({'n'}, '<C-d>', '<C-d>zz')
vim.keymap.set({'n'}, '<C-b>', '<C-b>zz')
vim.keymap.set({'n'}, '<C-f>', '<C-f>zz')
vim.keymap.set({'n'}, '<C-y>', '<C-y>zz')
vim.keymap.set({'n'}, 'n', 'nzz')
vim.keymap.set({'n'}, 'N', 'Nzz')

-- Delete text
vim.keymap.set({'n', 'x'}, '<leader>x', '"_x')

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')

vim.keymap.set('n', '<leader>fh', '<cmd>set filetype=helm<cr>')
vim.keymap.set('n', '<leader>fy', '<cmd>set filetype=yaml<cr>')

-- Buffers
vim.cmd('nmap <silent> ;; :bnext<CR>')
for i = 1, 9 do
  vim.keymap.set('n', ';' .. i, ':b' .. i .. '<CR>', { noremap = true, silent = true })
end
