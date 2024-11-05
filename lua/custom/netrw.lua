vim.g.netrw_banner = 0 -- Hide banner
vim.g.netrw_browse_split = 0 -- Open file in the same window that you are currently in... 0=same 1=horizontal split 2=vertical split 3=new tab 4=previous window
vim.g.netrw_altv = 1 -- Open splits to the right
vim.g.netrw_liststyle = 3 -- Tree style view 0=simple list with file name 1=long list file size & timestamp 2=wide list files arranged horizontal 3=tree style
vim.g.netrw_winsize = 25 -- Set width to 25%

vim.keymap.set('n', '<leader>e', ':Lexplore<CR>', { desc = 'Toggle mini file tree explorer', silent = true })
