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

nmap("<leader>rl", ":so ~/.config/nvim/init.lua<CR>")
nmap("<leader>rc", ":vs<CR>:Ex ~/.config/nvim<CR>")
nmap("<leader>p", ":PlugInstall<CR>")
nmap("<leader>wq", ":wq<CR>")
nmap("<leader>q", ":q<CR>")

nmap("J", "7j")
nmap("K", "7k")

nmap("/", ":set hlsearch<CR>/")
nmap("?", ":set hlsearch<CR>?")
nmap("#", ":set hlsearch<CR>#")
nmap("*", ":set hlsearch<CR>*")
nmap("<leader>hh", ":set hlsearch!<CR>")

--Comments
nmap("<leader>kc", ":CommentToggle<cr>" )
vmap("<leader>kc", ":CommentToggle<cr>")


nmap('<F2>', ":NERDTreeToggle %:p <cr>")
nmap("<leader>t", ":!alacritty --working-directory %:h &<cr>")

nmap("<leader><tab>", ":bn<cr>")
nmap('<leader><S-tab>',"bp<cr>")

--" Use alt + hjkl to resize windows
--nnoremap <M-j>  :resize -2<CR>
--nnoremap <M-k>  :resize +2<CR>
--nnoremap <M-h>  :vertical resize -2<CR>
--nnoremap <M-l>  :vertical resize +2<CR>

vim.cmd ([[
    au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
    au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
]])

--Colorizer
nmap("<leader>ct",":ColorizerToggle<CR>")

--Fterm
nmap('<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
tmap('<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')


