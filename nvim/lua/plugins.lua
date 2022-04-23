--  _____  _             _           
-- |  __ \| |           (_)          
-- | |__) | |_   _  __ _ _ _ __  ___ 
-- |  ___/| | | | |/ _` | | '_ \/ __|
-- | |    | | |_| | (_| | | | | \__ \
-- |_|    |_|\__,_|\__, |_|_| |_|___/
--                  __/ |            
--                 |___/             
-- Directorio de plugins
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'

--"Temas
Plug  'joshdick/onedark.vim'   
vim.cmd [[Plug  'sonph/onehalf', {'rtp': 'vim'}]]
Plug  'sainnhe/gruvbox-material'
Plug  'morhetz/gruvbox'

--"Identado
Plug 'Yggdroot/indentLine'

--"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  --k" Temas para airline

--Tabs


--nerdTree
Plug 'preservim/nerdtree'
--"Autopairs
Plug 'jiangmiao/auto-pairs'

--Floating Terl
Plug 'numToStr/Fterm.nvim'

--" Icons
Plug 'ryanoasis/vim-devicons'

--Comments
Plug 'tpope/vim-commentary'

--Treesiter
vim.cmd[[Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}]]

--"git
Plug 'airblade/vim-gitgutter'


Plug 'xiyaowong/nvim-cursorword' --" highlight current word
Plug 'lukas-reineke/indent-blankline.nvim'

-- Colors
Plug 'norcalli/nvim-colorizer.lua'

-- Black 
-- vim.cmd[[
--     Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
-- ]]

---- LSP
Plug 'neovim/nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'onsails/lspkind-nvim'
-- Snips
Plug 'SirVer/ultisnips'

vim.call('plug#end')
