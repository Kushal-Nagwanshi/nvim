--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
local home = os.getenv("HOME")
if (home == nil) then
    home = os.getenv("UserProfile")
end

vim.opt.undodir = home .. "/.vim/undodir"
vim.opt.guifont='Inconsolata Nerd Font Mono'
--vim.opt.guifont='Inconsolata Nerd Font Mono'
--vim.opt.guifont='Ubuntu Nerd Mono'
