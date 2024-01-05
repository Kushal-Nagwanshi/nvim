local M = {
    "theprimeagen/refactoring.nvim",
    event = "VeryLazy",
}


function M.config()
    require('refactoring').setup({})
    vim.api.nvim_set_keymap("v", "<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
        { noremap = true, silent = true, expr = false })
end

if plugin_enabled['refactoring'] == true then
   return M
   else return {}
end
