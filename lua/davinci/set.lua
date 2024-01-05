local home = os.getenv("HOME")
if (home == nil) then
    home = os.getenv("UserProfile")
end

vim.opt.isfname:append("@-@")

local settings = {
    undodir = home .. "/.vim/undodir",
    nu = true,
    relativenumber = true,

    laststatus = 3,

    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,

    smartindent = true,

    wrap = false,

    swapfile = false,
    backup = false,
    undofile = true,

    ignorecase = true,
    smartcase = true,
    hlsearch = false,
    incsearch = true,

    termguicolors = true,

    splitbelow = true,
    splitright = true,
    virtualedit = "block",
    inccommand = "split",

    scrolloff = 999,
    signcolumn = "yes",

    updatetime = 50,
    --cursorline = true,
    colorcolumn = "80",

    --'MesloLGM Nerd Font Mono'
    --'Inconsolata Nerd Font Mono'
    guifont = 'UbuntuMono Nerd Font:h16'
}

for setting, option in pairs(settings) do
    vim.opt[setting] = option
end

-------------------------------------------------------------------------------

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
