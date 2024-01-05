local M = {
    "folke/trouble.nvim",
    event = "VeryLazy",
}


function M.config()
    vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
        { silent = true, noremap = true })


    require("trouble").setup {
        icons = false,
    }
end

if plugin_enabled['trouble'] == true then
   return M
   else return {}
end
