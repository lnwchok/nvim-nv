vim.api.nvim_create_user_command('RunCode', function()
  require('nvchad.term').runner {
    id = 'boo',
    pos = 'sp',

    -- cmd = 'python test.py',
    clear_cmd = false,
    cmd = function()
      local file = vim.fn.expand '%'

      local ft_cmds = {
        python = 'python ' .. file, -- <-- Window version
        cpp = 'clear && g++ -o out ' .. file .. ' && ./out',
      }
      return ft_cmds[vim.bo.ft]
    end,
  }
end, {})
