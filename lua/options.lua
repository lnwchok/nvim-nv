require 'nvchad.options'

-- add yours here!
local o = vim.o

if vim.fn.executable 'pwsh' == 1 then
  o.shell = 'pwsh'
else
  o.shell = 'powershell'
end

-- Setting shell command flags
o.shellcmdflag =
  "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';"

-- Setting shell redirection
o.shellredir = '2>&1 | %{ "$_" } | Out-File %s; exit $LastExitCode'

-- Setting shell pipe
o.shellpipe = '2>&1 | %{ "$_" } | Tee-Object %s; exit $LastExitCode'

-- Setting shell quote options
o.shellquote = ''
o.shellxquote = ''
