-- Place this in ~/.config/nvim/lua/custom/plugins/multicursor.lua
return {
  {
    'mg979/vim-visual-multi',
    branch = 'master',
    init = function()
      vim.g.VM_leader = '\\'
      vim.g.VM_theme = 'ocean'

      -- Fix the color highlighting issue
      vim.cmd [[
        highlight VM_Extend guibg=#0066ff guifg=white
        highlight VM_Cursor guibg=#aa00ff guifg=white
        highlight VM_Insert guibg=#00ff00 guifg=black
        highlight VM_Mono guifg=black guibg=white
      ]]

      vim.g.VM_maps = {
        ['Find Under'] = '',
        ['Find Subword Under'] = '',
        ['Select Cursor Down'] = '<M-j>',
        ['Select Cursor Up'] = '<M-k>',
        ['Select All'] = '<M-a>',
        ['Start Regex Search'] = '<M-/>',
        ['Add Cursor At Pos'] = '<M-i>',
        ['Visual Regex'] = '<M-/>',
        ['Find Next'] = ']',
        ['Find Prev'] = '[',
        ['Skip Region'] = 'q',
        ['Remove Region'] = 'Q',
        ['Visual All'] = '<M-a>',
        ['Visual Find'] = '<M-f>',
        ['Undo'] = 'u',
        ['Redo'] = '<C-r>',
      }

      vim.g.VM_mouse_mappings = 1
      vim.g.VM_highlight_matches = 'underline'
      vim.g.VM_show_warnings = 0
      vim.g.VM_case_setting = 'smart'

      -- Add keymaps after plugin loads
      vim.defer_fn(function()
        vim.keymap.set('n', '<M-d>', '<Plug>(VM-Find-Under)', { desc = 'Multi-cursor find word under cursor' })
        vim.keymap.set('n', '<M-D>', '<Plug>(VM-Find-Subword-Under)', { desc = 'Multi-cursor find subword under cursor' })
        vim.keymap.set('n', '<C-M-j>', '<Plug>(VM-Add-Cursor-Down)', { desc = 'Add cursor down' })
        vim.keymap.set('n', '<C-M-k>', '<Plug>(VM-Add-Cursor-Up)', { desc = 'Add cursor up' })
      end, 100)
    end,
  },
}
