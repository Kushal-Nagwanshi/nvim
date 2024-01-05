local M = { "brenoprata10/nvim-highlight-colors",
		event = "VeryLazy"
}
function M.config()
		require('nvim-highlight-colors').setup {
				render = 'background', -- 'foreground' or 'first_column' or 'background'
				enable_named_colors = true,
		}
end

if plugin_enabled['nvim_highlight_colors'] == true then
   return M
   else return {}
end
