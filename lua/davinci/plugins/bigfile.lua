local M = {
    "LunarVim/bigfile.nvim",
    lazy = false,
    priority = 1000,
}

if plugin_enabled['bigfile'] == true then
    return M
else return {}
end
