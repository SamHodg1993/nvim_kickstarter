-- in ~/.config/nvim/lua/custom/colours.lua
-- Global variable to track transparency state
vim.g.transparent_enabled = true

-- Function to toggle transparency
function ToggleTransparency()
  vim.g.transparent_enabled = not vim.g.transparent_enabled

  if vim.g.transparent_enabled then
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  else
    -- Reset to default background
    vim.cmd.colorscheme 'dracula'
  end
end

-- Set colorscheme
vim.cmd.colorscheme 'dracula'

-- Create an autocmd to set transparency after the colorscheme loads
vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = function()
    if vim.g.transparent_enabled then
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end
  end,
})

-- Initial setup of transparency
if vim.g.transparent_enabled then
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

-- Create a keymap for toggling (for example, using <leader>tt)
vim.keymap.set('n', '<leader>bg', ToggleTransparency, { noremap = true, silent = true })
