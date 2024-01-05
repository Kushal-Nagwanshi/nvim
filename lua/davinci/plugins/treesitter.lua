local M = {
    'nvim-treesitter/nvim-treesitter',
    event = "VeryLazy",
    build = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
}

function M.config()
    require 'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
		--"vimdoc", "javascript", "c", "vim", "regex", "lua", "bash", "markdown", "markdown_inline" are a must for noice.nvim

		ensure_installed = { "vimdoc", "vim", "lua", "regex", "bash", "markdown", "markdown_inline",
		"javascript","typescript",
		"c", "cpp", "rust", "python",
},

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        highlight = {
            -- `false` will disable the whole extension
            enable = true,

            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false,
        },

		textobjects = {
				select = {
						enable = true,
						-- Automatically jump forward to textobj, similar to targets.vim
						lookahead = true,

						keymaps = {
								-- You can use the capture groups defined in textobjects.scm
								["af"] = "@function.outer",
								["if"] = "@function.inner",
								["ac"] = "@class.outer",
								-- You can optionally set descriptions to the mappings (used in the desc parameter of
								-- nvim_buf_set_keymap) which plugins like which-key display
								["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
								-- You can also use captures from other query groups like `locals.scm`
								["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
						},
						-- You can choose the select mode (default is charwise 'v')
						--
						-- Can also be a function which gets passed a table with the keys
						-- * query_string: eg '@function.inner'
						-- * method: eg 'v' or 'o'
						-- and should return the mode ('v', 'V', or '<c-v>') or a table
						-- mapping query_strings to modes.
						selection_modes = {
								['@parameter.outer'] = 'v', -- charwise
								['@function.outer'] = 'V', -- linewise
								['@class.outer'] = '<c-v>', -- blockwise
						},
						include_surrounding_whitespace = true,
				},
		},

}
end

if plugin_enabled['treesitter'] == true then
   return M
   else return {}
end
