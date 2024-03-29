local M = {
    "numToStr/comment.nvim",
    dependencies = {},
    keys = { { "gc" }, { "gc", mode = "v" } },
}

function M.config()
    require("Comment").setup({
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    })
end

if plugin_enabled['comment'] == true then
   return M
   else return {}
end
