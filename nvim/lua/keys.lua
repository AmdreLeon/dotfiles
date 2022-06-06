--  _____                                _   __  __                   _
--  __ \                              | | |  \/  |                 (_)              _
-- | |__) |__ _ __ ___  ___  _ __   __ _| | | \  / | __ _ _ __  _ __  _ _ __   __ _  (_)
-- |  ___/ _ \ '__/ __|/ _ \| '_ \ / _` | | | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` |
-- | |  |  __/ |  \__ \ (_) | | | | (_| | | | |  | | (_| | |_) | |_) | | | | | (_| |  _
-- |_|   \___|_|  |___/\___/|_| |_|\__,_|_| |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, | (_)
--                                                       | |   | |             __/ |
--                                                       |_|   |_|            |___/
--

vim.g.mapleader = ' '

local function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true })
end

local function nmap(shortcut, command)
    map('n', shortcut, command)
end

local function imap(shortcut, command)
    map('i', shortcut, command)
end

local function tmap(shortcut, command)
    map('t', shortcut, command)
end

local function vmap(shortcut, command)
    map('v', shortcut, command)
end

nmap("<leader>rl", ":luafile ~/.config/nvim/init.lua<CR>")
nmap("<leader>rc", ":vs<CR>:Ex ~/.config/nvim<CR>")
nmap("<leader>p", ":PlugInstall<CR>")
nmap("<leader>wq", ":wq<CR>")
nmap("<leader>q", ":q!<CR>")
nmap("<leader>ww", ":w<CR>")
nmap("J", "7jzz")
nmap("K", "7kzz")

nmap("/", ":set hlsearch<CR>/")
nmap("?", ":set hlsearch<CR>?")
nmap("#", ":set hlsearch<CR>#")
nmap("*", ":set hlsearch<CR>*")
nmap("<leader>hh", ":set hlsearch!<CR>")

nmap("<leader>n", ":NERDTreeFocus<CR>")
--Comments
nmap("<leader>kc", ":CommentToggle<cr>")
vmap("<leader>kc", ":CommentToggle<cr>")

nmap('<F2>', ":NERDTreeToggle %:p <cr>")
nmap("<leader>t", ":!kitty --working-directory %:h &<cr>")

nmap("<leader><tab>", ":bn<cr>")
nmap('<leader><S-tab>', ":bp<cr>")


--" Use alt + hjkl to resize windows
nmap("<M-j>", ":resize -2<CR>")
nmap("<M-k>", ":resize +2<CR>")
nmap("<M-h>", ":vertical resize -2<CR>")
nmap("<M-l>", ":vertical resize +2<CR>")

-- nmap("<leader>wj", "<C-w>j")
-- nmap("<leader>wk", "<C-w>k")
-- nmap("<leader>wh", "<C-w>h")
-- nmap("<leader>wl", "<C-w>l")

nmap("n", "nzz")
nmap("N", "Nzz")

--Colorizer
nmap("<leader>ct", ":ColorizerToggle<CR>")

--Fterm
nmap('<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
tmap('<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

nmap("<leader>fi", ":ALEFix<CR>")

nmap("<leader>ff", ":FZF<CR>")
nmap("<leader>fg", ":Telescope live_grep<CR>")
nmap("<leader>fb", ":Telescope buffers<CR>")
nmap("<leader>fh", ":Telescope help_tags<CR>")
nmap("<leader>gb", ":Telescope git_branches<CR>")

nmap("<leader>gl", ":Flogsplit<CR>")
nmap("<leader>gg", ":G<CR>")
