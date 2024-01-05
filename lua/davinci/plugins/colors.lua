local M =
{
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    { "rose-pine/neovim",  name = "rose-pine", event = "VeryLazy" },
    {
        "rebelot/kanagawa.nvim",
        --lazy = false,
        event = "VeryLazy"
    },
    { "sainnhe/everforest" },
    {
        "sainnhe/gruvbox-material",
		--lazy = false,
		even = "VeryLazy",
        config = function()
            vim.cmd("let g:gruvbox_material_background = 'hard'")
        end,
    },
    {
        --lazy = false,
        event = "VeryLazy",
        --priority = 1000,
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            transparent_background = true,
            highlight_overrides = {
                all = function(colors)
                    return {
                        LineNr = { fg = "#4b5481" },
                    }
                end,
            },
            integrations = {
                illuminate = true,
                lsp_saga = true,
                treesitter = true,
                which_key = true,
                treesitter_context = true,
                nvimtree = true,
                mason = true,
                aerial = true,
                telescope = false,
                -- ts_rainbow2 = true,
                notify = true,
                noice = true,
            },
        },
    },
}

if plugin_enabled['colors'] == true then
   return M
   else return {}
end
