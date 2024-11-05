-- return {
--   'goolord/alpha-nvim',
--   dependencies = { 'nvim-tree/nvim-web-devicons' },
--   config = function()
--     -- require('alpha').setup(require('alpha.themes.startify').config)
--     require('alpha').setup(require('alpha.themes.dashboard').config)
--   end,
-- }

return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Custom header
    dashboard.section.header.val = {

      [[                                                                                                                                                                                          ]],
      [[                                                                                                                                                                                          ]],
      [[                                                         SSSSSSSSSSSSSSS                                                                                                                  ]],
      [[                                                       SS:::::::::::::::S                                                                                                                 ]],
      [[                                                      S:::::SSSSSS::::::S                                                                                                                 ]],
      [[                                                      S:::::S     SSSSSSS                                                                                                                 ]],
      [[                                                      S:::::S              aaaaaaaaaaaaa      mmmmmmm    mmmmmmm       ssssssssss                                                         ]],
      [[                                                      S:::::S              a::::::::::::a   mm:::::::m  m:::::::mm   ss::::::::::s                                                        ]],
      [[                                                       S::::SSSS           aaaaaaaaa:::::a m::::::::::mm::::::::::mss:::::::::::::s                                                       ]],
      [[                                                        SS::::::SSSSS               a::::a m::::::::::::::::::::::ms::::::ssss:::::s                                                      ]],
      [[                                                          SSS::::::::SS      aaaaaaa:::::a m:::::mmm::::::mmm:::::m s:::::s  ssssss                                                       ]],
      [[                                                             SSSSSS::::S   aa::::::::::::a m::::m   m::::m   m::::m   s::::::s                                                            ]],
      [[                                                                  S:::::S a::::aaaa::::::a m::::m   m::::m   m::::m      s::::::s                                                         ]],
      [[                                                                  S:::::Sa::::a    a:::::a m::::m   m::::m   m::::mssssss   s:::::s                                                       ]],
      [[                                                      SSSSSSS     S:::::Sa::::a    a:::::a m::::m   m::::m   m::::ms:::::ssss::::::s                                                      ]],
      [[                                                      S::::::SSSSSS:::::Sa:::::aaaa::::::a m::::m   m::::m   m::::ms::::::::::::::s                                                       ]],
      [[                                                      S:::::::::::::::SS  a::::::::::aa:::am::::m   m::::m   m::::m s:::::::::::ss                                                        ]],
      [[                                                       SSSSSSSSSSSSSSS     aaaaaaaaaa  aaaammmmmm   mmmmmm   mmmmmm  sssssssssss                                                          ]],
      [[                                                                                                                                                                                          ]],
      [[                                                                                                                                                                                          ]],
      [[                                                                           kkkkkkkk                                                                                                       ]],
      [[                                                                           k::::::k                                                                                                       ]],
      [[                                                                           k::::::k                                                                                                       ]],
      [[                                                                           k::::::k                                                                                                       ]],
      [[wwwwwww           wwwww           wwwwwww ooooooooooo   rrrrr   rrrrrrrrr   k:::::k    kkkkkkk  ssssssssss   ppppp   ppppppppp     aaaaaaaaaaaaa      cccccccccccccccc    eeeeeeeeeeee    ]],
      [[ w:::::w         w:::::w         w:::::woo:::::::::::oo r::::rrr:::::::::r  k:::::k   k:::::k ss::::::::::s  p::::ppp:::::::::p    a::::::::::::a   cc:::::::::::::::c  ee::::::::::::ee  ]],
      [[  w:::::w       w:::::::w       w:::::wo:::::::::::::::or:::::::::::::::::r k:::::k  k:::::kss:::::::::::::s p:::::::::::::::::p   aaaaaaaaa:::::a c:::::::::::::::::c e::::::eeeee:::::ee]],
      [[   w:::::w     w:::::::::w     w:::::w o:::::ooooo:::::orr::::::rrrrr::::::rk:::::k k:::::k s::::::ssss:::::spp::::::ppppp::::::p           a::::ac:::::::cccccc:::::ce::::::e     e:::::e]],
      [[    w:::::w   w:::::w:::::w   w:::::w  o::::o     o::::o r:::::r     r:::::rk::::::k:::::k   s:::::s  ssssss  p:::::p     p:::::p    aaaaaaa:::::ac::::::c     ccccccce:::::::eeeee::::::e]],
      [[     w:::::w w:::::w w:::::w w:::::w   o::::o     o::::o r:::::r     rrrrrrrk:::::::::::k      s::::::s       p:::::p     p:::::p  aa::::::::::::ac:::::c             e:::::::::::::::::e ]],
      [[      w:::::w:::::w   w:::::w:::::w    o::::o     o::::o r:::::r            k:::::::::::k         s::::::s    p:::::p     p:::::p a::::aaaa::::::ac:::::c             e::::::eeeeeeeeeee  ]],
      [[       w:::::::::w     w:::::::::w     o::::o     o::::o r:::::r            k::::::k:::::k  ssssss   s:::::s  p:::::p    p::::::pa::::a    a:::::ac::::::c     ccccccce:::::::e           ]],
      [[        w:::::::w       w:::::::w      o:::::ooooo:::::o r:::::r           k::::::k k:::::k s:::::ssss::::::s p:::::ppppp:::::::pa::::a    a:::::ac:::::::cccccc:::::ce::::::::e          ]],
      [[         w:::::w         w:::::w       o:::::::::::::::o r:::::r           k::::::k  k:::::ks::::::::::::::s  p::::::::::::::::p a:::::aaaa::::::a c:::::::::::::::::c e::::::::eeeeeeee  ]],
      [[          w:::w           w:::w         oo:::::::::::oo  r:::::r           k::::::k   k:::::ks:::::::::::ss   p::::::::::::::pp   a::::::::::aa:::a cc:::::::::::::::c  ee:::::::::::::e  ]],
      [[           www             www            ooooooooooo    rrrrrrr           kkkkkkkk    kkkkkkksssssssssss     p::::::pppppppp      aaaaaaaaaa  aaaa   cccccccccccccccc    eeeeeeeeeeeeee  ]],
      [[                                                                                                              p:::::p                                                                     ]],
      [[                                                                                                              p:::::p                                                                     ]],
      [[                                                                                                             p:::::::p                                                                    ]],
      [[                                                                                                             p:::::::p                                                                    ]],
      [[                                                                                                             p:::::::p                                                                    ]],
      [[                                                                                                             ppppppppp                                                                    ]],
      [[                                                                                                                                                                                          ]],
    }

    -- Custom menu
    dashboard.section.buttons.val = {
      dashboard.button('n', '  New File', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '  Find File', ':Telescope find_files<CR>'),
      -- dashboard.button('r', '  Recent Files', ':Telescope oldfiles<CR>'),
      dashboard.button('g', '  Find Text', ':Telescope live_grep<CR>'),
      dashboard.button('m', '  Mason', ':Mason<CR>'),
      dashboard.button('l', '  Lazy', ':Lazy<CR>'),
      dashboard.button('c', '  Configuration', ':e $MYVIMRC<CR>'),
      -- dashboard.button('p', '  Projects', ':Telescope projects<CR>'),
      dashboard.button('t', '  Todo', ':TodoTelescope<CR>'),
      dashboard.button('s', '  Sessions', ':Telescope persisted<CR>'),
      -- dashboard.button('h', '  Themes', ':Telescope colorscheme<CR>'),
      dashboard.button('k', '  Keymaps', ':Telescope keymaps<CR>'),
      dashboard.button('e', '  Explorer', ':NvimTreeToggle<CR>'),
      dashboard.button('q', '  Quit', ':qa<CR>'),
    }

    -- Footer
    dashboard.section.footer.val = {
      '',
      '🚀 Ready to code!',
    }

    alpha.setup(dashboard.config)
  end,
}
