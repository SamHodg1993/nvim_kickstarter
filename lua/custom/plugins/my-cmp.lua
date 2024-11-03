require('luasnip.loaders.from_vscode').lazy_load()
return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  },
  config = function()
    local cmp = require 'cmp'
    local luasnip = require 'luasnip'

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert {
        ['<Down>'] = cmp.mapping.select_next_item(),
        ['<Up>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-b>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm { select = true },
        ['<Tab>'] = cmp.mapping.confirm { select = true },

        -- Optional: Add Ctrl+Enter for confirming without selecting
        ['<C-CR>'] = cmp.mapping.confirm { select = false },

        -- Keep these for functionality
        ['<C-Space>'] = cmp.mapping.complete(),
        -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
      },
    }
  end,
}
