return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    require('nvim-autopairs').setup {
      check_ts = true, -- Enable tree-sitter
      ts_config = {
        lua = { 'string' }, -- Don't add pairs in lua string tree-sitter nodes
        javascript = { 'template_string' }, -- Don't add pairs in javascript template_string
      },
    }
  end,
}
