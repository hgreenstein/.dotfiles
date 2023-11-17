vim.g.mapleader = " "
--local api = require "nvim-tree.api"
--vim.keymap.set("n", "<leader>pv", api.tree.toggle())
vim.api.nvim_set_keymap('v', '<leader>y', [[:'<,'>w !clip.exe<CR>]], {noremap = true, silent = true})
vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}

