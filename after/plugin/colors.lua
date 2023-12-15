function ColorMyPencils(color,bgr)
    --simply call this function with the desired themes name!
    --or with the designated number to change the theme.

    choice = {}
    choice[0] = "tokyonight"
    choice[1] = "rose-pine"
    choice[2] = "catppuccin"

    color = choice[tonumber(color)] or color or choice[2]
    vim.cmd.colorscheme(color)

    if bgr == '1' or bgr == 1 then return
    else
        require('rose-pine').setup({
            disable_background = true
        })
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
end

ColorMyPencils()
