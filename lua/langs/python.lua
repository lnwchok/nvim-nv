return {
  -- Formatting by Conform
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    opts = {

      formatters_by_ft = {
        python = { 'isort', 'black' },
      },
      formatters = {
        -- Python
        black = {
          prepend_args = {
            '--fast',
            '--line-length',
            '80',
          },
        },
        isort = {
          prepend_args = {
            '--profile',
            'black',
          },
        },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lspconfig = require 'lspconfig'

      -- EXAMPLE
      -- local servers = { 'pyright' }
      local nvlsp = require 'nvchad.configs.lspconfig'

      -- lsps with default config
      -- for _, lsp in ipairs(servers) do
      --   lspconfig[lsp].setup {
      --     on_attach = nvlsp.on_attach,
      --     on_init = nvlsp.on_init,
      --     capabilities = nvlsp.capabilities,
      --   }
      -- end
      lspconfig.pyright.setup {

        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
      }
    end,
  },
}
