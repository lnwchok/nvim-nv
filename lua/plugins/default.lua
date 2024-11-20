return {
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    opts = require 'configs.conform',
  },
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require 'configs.lspconfig'
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = require 'configs.nvim-treesitter',
  },
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    config = function()
      require 'configs.dashboard'
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    enabled = false,
  },
}
