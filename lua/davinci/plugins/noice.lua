local M = {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        messages ={
            enabled = false, -- has to be false if you don't want cmdline UI
        },
        cmdline = {
            enabled = true, -- enables the Noice cmdline UI
            view = "cmdline",--"cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
        },
        lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
            signature = {
                enabled = false,
            },
            hover = {
                enabled = false,
            }
        },
        -- you can enable a preset for easier configuration
        presets = {
            bottom_search = false,       -- use a classic bottom cmdline for search
            command_palette = false,      -- position the cmdline and popupmenu together
            long_message_to_split = true, -- long messages will be sent to a split
            inc_rename = false,           -- enables an input dialog for inc-rename.nvim
            lsp_doc_border = false,       -- add a border to hover docs and signature help
        },
        throttle = 5000 , -- how frequently does Noice need to check for ui updates? This has no effect when in blocking mode.


    },
    dependencies = {
        "MunifTanjim/nui.nvim",
        -- {
        "rcarriga/nvim-notify",
        --     opts = { background_colour = "#000000" },
        --   },
    },
}

if plugin_enabled['noice'] == true then
   return M
   else return {}
end
