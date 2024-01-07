-- TIPS
-- switch : with ; | easier to go to :cmd
-- Always set your leader and local leader on the top to avoid getting frustrated
-- on why they didn't work.
-- <cmd> has better interaction with folke/noice-nvim
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

local home = os.getenv("HOME")
if (home == nil) then
    home = os.getenv("UserProfile")
end

local mappings = {
    n = {
        -------------------------Life hacks------------------------------------
        [";"] = ":",
        [":"] = ";",
        -- :Ex is for opening default file Explorer in vim which is netrw
        ["<leader>pv"] = "<cmd>Ex<cr>",
        --I don't ever seem to use U's default so I am trying out this | got this idea
        --"from Helix, this was pretty intuitive
        ["U"] = "<C-r>",
        --" much easier for saving which has to be done quite often.
        ["<leader>w"] = "<cmd>w<cr>",
        --" much easier for quiting
        ["<leader>q"] = "<cmd>q<cr>",
        --" quit without saving
        ["<leader>Q"] = "<cmd>q!<cr>",
        ---------------------Quick File Access-------------------------------
        ["<leader>vim"] = "<cmd>e " .. home .. "/.vimrc<cr>",
        ["<leader>tmux"] = "<cmd>e " .. home .. "/.tmux.conf<cr>",
        ["<leader>bash"] = "<cmd>e " .. home .. "/.bashrc<cr>",
        ["<leader>todo"] = "<cmd>e " .. home .. "/.Todo_stuff.md<cr>",
        ["<leader>lazy"] = "<cmd>e " .. home .. "/.config/nvim/lua/davinci/lazy.lua<cr>",
        -- TODO also change the pwd
        ["<leader>nvim"] = "<cmd>e " .. home .. "/.config/nvim/lua/davinci/remap.lua<cr>",

        ---------------------------------Tab related----------------------------------
        ["<leader><Tab>"] = "<cmd>tabnew<cr>",
        ["<M-9>"] = "<cmd>tabprev<cr>", -- Alt 9
        ["<M-0>"] = "<cmd>tabnext<cr>", -- Alt 0

        ["<M-h>"] = "<C-w>h",
        ["<M-j>"] = "<C-w>j",
        ["<M-k>"] = "<C-w>k",
        ["<M-l>"] = "<C-w>l",

        ["<A-d>"] = "a",
        ["<C-d>"] = "<C-d>zz",
        ["<C-u>"] = "<C-u>zz",
        ["J"] = "mzJ`z",
        ["N"] = "Nzzzv",
        ["n"] = "nzzzv",
        -- greatest remap ever
        ["<leader>p"] = [["*p]],

        -- Here "*y  is for copying from the Global register *   and "+
        -- next greatest remap ever : asbjornHaland
        ["<leader>y"] = [["*y]],
        ["<leader>Y"] = [["*Y]],
        ["<leader>d"] = [["_d]],

        ["Q"] = "<nop>",
        ["<C-f>"] = "<cmd>silent !tmux neww " .. home .. "/.dotfiles/tmux-sessionizer<CR>",
        ["<leader>f"] = vim.lsp.buf.format,
        ["<C-k>"] = "<cmd>cnext<CR>zz",
        ["<C-j>"] = "<cmd>cprev<CR>zz",
        ["<leader>k"] = "<cmd>lnext<CR>zz",
        ["<leader>j"] = "<cmd>lprev<CR>zz",

        ["<leader>ss"] = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],

        ["<leader>mr"] = "<cmd>CellularAutomaton make_it_rain<CR>",
        ["<leader><leader>"] = function() vim.cmd("so") end,

        ["<C-w>-"] = "<cmd>split<CR>",
        ["<C-w>|"] = "<cmd>vsplit<CR>",
        ----------------------------LaTex--------------------------------------

        ["<leader>latex"] = ":tabnew<CR>:terminal texify --pdf --engine=luahbtex --synctex=1 --clean ./pdf.tex<CR><Esc>:tabprev<CR>",

    },
    v = {
        [";"] = ":",
        [":"] = ";",
        ["J"] = "<Esc><cmd>m '>+1<CR>gv=gv", -- see :h <cmd> for
        ["K"] = "<Esc><cmd>m '<-2<CR>gv=gv", -- why <Esc> precedes <cmd>
        ["<leader>d"] = [["_d]],
        ["<leader>p"] = [["*p]],
        ["<leader>y"] = [["*y]],
        ["<A-d>"] = "<Esc>",
        --["<leader>s"] = [["0y:%s/\<C-r>0/<C-r>0/gI<Left><Left><Left>]],
    },
    i = {
        -- This is going to get me cancelled
        ["<C-c>"] = "<Esc>",
    },
    t = {
        -- Terminal window navigation
        ["<M-h>"] = "<C-\\><C-N><C-w>h",
        ["<M-j>"] = "<C-\\><C-N><C-w>j",
        ["<M-k>"] = "<C-\\><C-N><C-w>k",
        ["<M-l>"] = "<C-\\><C-N><C-w>l",
        ---------------------------------Tab related----------------------------------

        ["<M-9>"] = "<cmd>tabprev<cr>", -- Alt 9
        ["<M-0>"] = "<cmd>tabnext<cr>", -- Alt 0
    },
    x = {
        ["<leader>p"] = [["_dP]],
        ["J"] = "<Esc><cmd>m '>+1<CR>gv=gv", -- see :h <cmd> for,
        ["K"] = "<Esc><cmd>m '<-2<CR>gv=gv", -- why <Esc> precedes <cmd>
    },
    --command mode
    c = {
        ["<C-h>"] = "<Left>",
        ["<C-l>"] = "<Right>",
    }
}

for mode, mapping in pairs(mappings) do
    for before, after in pairs(mapping) do
        vim.keymap.set(mode, before, after)
    end
end

--vim.keymap.set("x", "J", ":m '>+1<CR>gv-gv")
--vim.keymap.set("x", "K", ":m '<-2<CR>gv-gv")

-------------------------------------------------------------------------------
if vim.fn.has('gui_running')
then
    vim.cmd("set guifont=MesloLGM_Nerd_Font_Mono:h14:cANSI:qDRAFT")
end

-----------------------------------OS Specific---------------------------------
if vim.fn.has('win32')
then
    vim.keymap.set("n", "<leader>lazy", "<cmd>e ~/AppData/Local/nvim/lua/davinci/lazy.lua<cr>")
    vim.keymap.set("n", "<leader>nvim", "<cmd>e ~/AppData/Local/nvim/lua/davinci/remap.lua<cr>")
end
