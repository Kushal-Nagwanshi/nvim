local M = { "kylechui/nvim-surround", event = "InsertEnter" }

-- kylechui/nvim-surround

function M.config()
    require('nvim-surround').setup {
        keymaps = {
            normal = "<leader>sa",
            normal_cur = false,
            normal_line = false,
            normal_cur_line = false,
            visual = "<leader>s",
            visual_line = "<leader>S",
            delete = "<leader>sd",
            change = "<leader>sr",
        },
        aliases = {
            ['i'] = ']', -- Index
            ['r'] = ')', -- Round
            ['b'] = '}', -- Brackets
        },
        move_cursor = false,
    }

    -- Surround words
    vim.keymap.set("n", "<leader>sw", "<leader>saiw", { remap = true })
    vim.keymap.set("n", "<leader>sW", "<leader>saiW", { remap = true })
    -- Replace qoutes
    local qoutes = { "'", '"', '`' }
    for _, char in ipairs(qoutes) do
        vim.keymap.set("n", "<leader>" .. char, "<leader>srq" .. char, { remap = true }) -- <leader>{char} to replace sandwich to {char}
    end
end

if plugin_enabled['nvim_surround'] == true then
   return M
   else return {}
end
