vim.api.nvim_create_user_command(
    'StatuslineTransparent',
    function()
        vim.cmd(':silent set statusline=""')
    end,
    {
        bang = true,
        desc =
        'Makes the Statusline to be transparent, made this to have a better compatibility with my Transparent Terminal setup'
    }
)

vim.cmd([[
    " remap cd to be global
    augroup NetrwGroup
        autocmd!
        autocmd filetype netrw call NetrwMapping()
    augroup END

    function! NetrwMapping()
        nnoremap <buffer> cd  :execute "cd ".b:netrw_curdir<cr>:pwd<cr>
    endfunction
]])
