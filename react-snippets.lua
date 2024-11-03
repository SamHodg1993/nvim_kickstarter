return {
  'dsznajder/vscode-react-javascript-snippets',
  event = 'InsertEnter',
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load()
  end,
}
