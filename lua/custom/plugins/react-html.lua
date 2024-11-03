-- Place this in ~/.config/nvim/lua/custom/plugins/react-html.lua
return {
  -- [Previous LSP and Mason configurations remain the same...]

  -- Fixed LuaSnip configuration
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      local luasnip = require 'luasnip'
      local s = luasnip.snippet
      local t = luasnip.text_node
      local i = luasnip.insert_node
      local d = luasnip.dynamic_node
      local sn = luasnip.snippet_node
      local rep = require('luasnip.extras').rep

      -- Load friendly-snippets
      require('luasnip.loaders.from_vscode').lazy_load()

      -- Add custom React snippets
      luasnip.add_snippets('javascriptreact', {
        s('rfc', {
          t 'const ',
          i(1, 'ComponentName'),
          t ' = () => {',
          t { '', '  ' },
          t 'return (',
          t { '', '    ' },
          i(2, '<div>'),
          t { '', '    ' },
          i(3, ''),
          t { '', '    ' },
          t '</div>',
          t { '', '  ' },
          t ');',
          t { '', '}' },
          t { '', '', 'export default ' },
          d(4, function(args)
            return sn(nil, {
              t(args[1][1]),
            })
          end, { 1 }),
          t ';',
        }),
        s('useState', {
          t 'const [',
          i(1, 'state'),
          t ', set',
          d(2, function(args)
            local cap = args[1][1]:gsub('^%l', string.upper)
            return sn(nil, {
              t(cap),
            })
          end, { 1 }),
          t '] = useState(',
          i(3, 'initialValue'),
          t ');',
        }),
      })

      -- Add the same snippets for TypeScript React
      luasnip.filetype_extend('typescriptreact', { 'javascriptreact' })
    end,
  },

  -- [Rest of your configurations remain the same...]
}
