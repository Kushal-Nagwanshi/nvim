M = {
    "gerazov/toggle-bool.nvim",
    lazy = false
}

function M.config()
    require("toggle-bool").setup {
        mapping = "<localleader>\\",
        additional_toggles = {
            Yes = 'No',
            On = 'Off',
            ["0"] = "1",
            Enable = 'Disable',
            Enabled = 'Disabled',
            First = 'Last',
            Before = 'After',
            Persistent = 'Ephemeral',
            Internal = 'External',
            Ingress = 'Egress',
            Allow = 'Deny',
            All = 'None',
            --lower case
            yes = 'no',
            on = 'off',
            enable = 'disable',
            enabled = 'disabled',
            first = 'last',
            before = 'after',
            internal = 'external',
            allow = 'deny',
            all = 'none',
            --wezterm related
            ['LEADER'] = 'META',
            ['SHIFT'] = 'CTRL',
            ['META'] = 'SHIFT',
            ['CTRL'] = 'ALT',
        },
    }
end

if plugin_enabled['toggle-bool'] == true then
    return M
else
    return {}
end
