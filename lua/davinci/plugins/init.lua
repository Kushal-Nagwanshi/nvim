local M =
{
	--------------------
	--Startup Greeter---
	--------------------
    {
		'dstein64/vim-startuptime',
		event = "VeryLazy"
	},
	-------THEME FOR STATUS LINE-------
	--'freddiehaddad/feline.nvim',
    -----------------------------------
	{
		'lewis6991/gitsigns.nvim',
		event = "VeryLazy"
        --config = function() require('gitsigns').setup() end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	},
	{
		"nvim-treesitter/playground",
		event = "InsertEnter",
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		event = "VeryLazy"
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "VeryLazy"
	},

    --"github/copilot.vim",

	{
        'nvim-tree/nvim-web-devicons',
		event = "VeryLazy"
	},
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
	},
	--color-highlights
	--[[

	{
		"norcalli/nvim-colorizer.lua",
		event = "VeryLazy"
	},
	]]
}

return M
