vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>E', vim.cmd.Ex)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Allows to keep what was last yanked in the clipboard
vim.keymap.set('v', 'p', '"_dP')

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Saves file with ctrl + s
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Vertical scroll and center the result
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Search and center the result
vim.keymap.set('n', 'n', 'nzz', opts)
vim.keymap.set('n', 'N', 'Nzz', opts)

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)

-- Move to left and right tabs
vim.keymap.set('n', '<A-Left>', ':tabp<CR>', opts)
vim.keymap.set('n', '<A-Right>', ':tabn<CR>', opts)

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
-- Window navigation
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- buffer keybindings
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts) -- next buffer
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts) -- previous buffer
vim.keymap.set('n', '<leader>bd', ':bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>bc', '<cmd> enew<CR>', opts) -- new buffer
