local M = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    lazy = false,
}

function M.config()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>pr', builtin.oldfiles,{desc="See recent files(oldfiles) in Telescope menu"})
    vim.keymap.set('n', '<leader>pt', builtin.builtin, {})
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    vim.keymap.set('n', '<leader>hp', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>tr', builtin.resume,{desc="Resume the previous Telescope state"})
end

if plugin_enabled['telescope'] == true then
   return M
   else return {}
end
