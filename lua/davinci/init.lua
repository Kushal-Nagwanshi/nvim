require("davinci.remap")
require("davinci.set")
require("davinci.usercommands")
require("davinci.plugins-switch")
require("davinci.lazy")

function R(name)
    require("plenary.reload").reload_module(name)
end

local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagenGroup', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})


-- Highlights after Copying/Yanking.
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

-- Automatically removes trailing whitespaces after saving a file
autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
