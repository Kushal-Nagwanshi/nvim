local M = { "mbbill/undotree", lazy = false }

function M.config()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
end

if plugin_enabled['undotree'] == true then
   return M
   else return {}
end
