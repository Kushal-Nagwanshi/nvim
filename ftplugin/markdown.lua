vim.keymap.set('n', '<localleader>gf', '"0yi[:e ./pages/<C-R>0.md<CR>')

local today = os.date('%Y_%m_%d')
vim.keymap.set('n', '<localleader>j', ':e ./journals/'..today..'.md<CR>')


