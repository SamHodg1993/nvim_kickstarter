local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('javascriptreact', {
  s('logbtn', {
    t '<button onClick={() => {console.log(',
    i(1, ''),
    t ')}}>',
    t { '', '  log', '</button>' },
  }),
})

ls.add_snippets('javascript', {
  s('logbtn', {
    t '<button onClick={() => {console.log(',
    i(1, ''),
    t ')}}>',
    t { '', '  log', '</button>' },
  }),
})
