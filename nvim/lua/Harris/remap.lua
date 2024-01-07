--local api = require "nvim-tree.api"
--vim.keymap.set("n", "<leader>pv", api.tree.toggle())
vim.keymap.set({"n", "v"}, "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>P", [["+p]])
--Yanks to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
--Auto centers window for better scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set({"n", "i", "v"}, "<C-l>", "<C-w>l")
vim.keymap.set({"n", "i", "v"}, "<C-k>", "<C-w>k")
vim.keymap.set({"n", "i", "v"}, "<C-j>", "<C-w>j")
vim.keymap.set({"n", "i", "v"}, "<C-h>", "<C-w>h")
--Pulls up LazyGit in Neovim
vim.keymap.set("n", "<leader>gg", ':LazyGit<CR>')
--Gen.nvim code ai help
vim.keymap.set({ 'n', 'v' }, '<leader>]', ':Gen<CR>')
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
