local alpha = require 'alpha'
local dashboard = require 'alpha.themes.dashboard'

-- Set header
dashboard.section.header.val = {
  '                                                     ',
  '                                  Z!!                ',
  '                                Z                    ',
  '                              z                      ',
  '                     ██████╗                         ',
  '                    ██╔═══██╗                        ',
  '                    ██║   ██║                        ',
  '                    ██║   ██║                        ',
  '                    ╚██████╔╝                        ',
  '═════════════════════╚═════╝═════════════════════════',
  '                                                     ',
  '                                                     ',
}

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button('e', '  > New File', '<cmd>ene<CR>'),
  dashboard.button('\\', '  > Toggle file explorer', '<cmd>Neotree reveal<CR>'),
  dashboard.button('c', '󰱼  > Config File', "<cmd>Telescope find_files search_dirs={vim.fn.stdpath('config')}<CR>"),
  -- dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
  dashboard.button('q', '  > Quit NVIM', '<cmd>qa<CR>'),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
