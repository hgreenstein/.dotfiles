--local api = require "nvim-tree.api"
--vim.keymap.set("n", "<leader>pv", api.tree.toggle())
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("x", "<leader>P", [["+p]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'xclip -selection clipboard',
    ['*'] = 'xclip -selection clipboard',
  },
  paste = {
    ['+'] = 'xclip -selection clipboard -o',
    ['*'] = 'xclip -selection clipboard -o',
  },
  cache_enabled = 0,
}
