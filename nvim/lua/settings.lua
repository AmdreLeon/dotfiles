--  ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
--  ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
--  ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
--  ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
--  ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
--  ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝


vim.cmd [[
    colorscheme base16-gruvbox-dark-hard
]]

vim.g.gruvbox_material_palette = 'original'
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_statusline_style = 'original'
vim.g.airline_theme = 'gruvbox_material'

vim.opt.background = 'dark'
vim.opt.termguicolors = true

vim.opt.cursorline = true
--vim.opt.noswapfile = true
--vim.opt.nobackup = true
vim.opt.undofile = true
vim.opt.smartcase = true
vim.opt.expandtab = true

vim.opt.smarttab = true
vim.opt.mouse = 'a'
vim.opt.relativenumber = true
vim.opt.colorcolumn = '90'
vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.ignorecase = true
vim.opt.autoindent = true
vim.opt.hidden = true

vim.opt.syntax = 'on'

-- vim.opt.completeopt = "menu,menuone"
--vim.cmd [[
--  filetype off
--  filetype plugin indent on
--  autocmd BufWinEnter,WinEnter term://* startinsert
--]]

--Airline

vim.cmd[[
    let g:airline#extensions#tabline#enable = 1

    let g:airline_powerline_fonts = 1

    set showtabline=2

    set noshowmode
    set noswapfile
    set nobackup
]]
