-------------------------------------------------
-- name : toggleterm-nvim
-- url  : https://github.com/akinsho/toggleterm.nvim
-------------------------------------------------

local M = {
    "akinsho/toggleterm.nvim",
    keys = {
        { "<leader>ter", ":ToggleTerm direction=float<CR>",      desc = "Toggle terminal float" },
        { "<C-`>",       ":ToggleTerm<CR>",                      desc = "Toggle terminal" },
        { "<leader>th",  ":ToggleTerm direction=horizontal<CR>", desc = "Toggle terminal horizontal" },
        { "<leader>gl",  desc = "Toggle lazygit" },
    },
    opts = {
        open_mapping = [[<c-`>]],
        direction = "float",
        start_in_insert = true,
    },
    config = function(plugin, opts)
        require("toggleterm").setup(opts)

        --------------------------
        -- Lazygit
        --------------------------
        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({
            cmd = "lazygit",
            direction = "float",
            count = 5,
        })

        vim.keymap.set("n", "<leader>gl", function()
            lazygit:toggle()
        end, { noremap = true, silent = true, desc = "Toggle lazygit" })
    end,
}

if plugin_enabled['toggleterm'] == true then
   return M
   else return {}
end
