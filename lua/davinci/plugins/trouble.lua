local M = {
    "folke/trouble.nvim",
    event = "VeryLazy",
}


function M.config()
    vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
        { silent = true, noremap = true })


    require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
end

if plugin_enabled['trouble'] == true then
   return M
   else return {}
end
