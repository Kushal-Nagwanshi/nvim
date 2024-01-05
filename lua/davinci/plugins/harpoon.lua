local M = { "theprimeagen/harpoon", lazy = false, }

function M.config()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")


    require("harpoon").setup({
        menu = {
            width = vim.api.nvim_win_get_width(0) - 8,
        }
    })

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    -- sets Alt + {h,j,k,l} to switch between files in Harpoon
    vim.keymap.set("n", "<A-h>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<A-j>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<A-k>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<A-l>", function() ui.nav_file(4) end)
end

if plugin_enabled['harpoon'] == true then
   return M
   else return {}
end
