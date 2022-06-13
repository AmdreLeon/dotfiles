--  _____  _             _
-- |  __ \| |           (_)
-- | |__) | |_   _  __ _ _ _ __  _-_
-- |  ___/| | | | |/ _` | | '_ \/ __|
-- | |    | | |_| | (_| | | | | \__ \
-- |_|    |_|\__,_|\__, |_|_| |_|___/
--                  __/ /
--                 |___/
-- Directorio de plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')

--#region testing
--COments
Plug 'folke/todo-comments.nvim'
----shows keymaps
Plug 'folke/which-key.nvim' --TODO veresto
--
-- Symbols tree --TODO veresto:
Plug 'simrat39/symbols-outline.nvim'

--Bufferline
vim.cmd [[Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }]]

Plug 'mrjones2014/smart-splits.nvim' -- Smart, directional Neovim split resizing and navigation.
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim' -- UI Component Library for Neovim.

Plug 'is0n/jaq-nvim'
--#endregion

--surround
Plug 'tpope/vim-surround' --TODO

Plug 'nvim-lua/plenary.nvim'
-- Fzf and Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf'

--"Temas
Plug  'joshdick/onedark.vim'
vim.cmd [[Plug  'sonph/onehalf', {'rtp': 'vim'}]]
Plug  'sainnhe/gruvbox-material'
Plug  'morhetz/gruvbox'
Plug 'RRethy/nvim-base16'

--"Identado
Plug 'Yggdroot/indentLine'

--"Airline
-- Plug 'vim-airline/vim-airline'
-- Plug 'vim-airline/vim-airline-themes'  --k" Temas para airline
Plug 'nvim-lualine/lualine.nvim'			-- Global bar
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
Plug 'lukas-reineke/indent-blankline.nvim' --  This plugin adds indentation guides to all lines (including empty lines).

-- Colors
Plug 'norcalli/nvim-colorizer.lua'

---- LSP
Plug 'neovim/nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'lukas-reineke/lsp-format.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'

---- Null-ls
Plug 'jose-elias-alvarez/null-ls.nvim'
---- Snippets
Plug "quangnguyen30192/cmp-nvim-ultisnips"
Plug 'thomasfaingnaert/vim-lsp-ultisnips' -- LSP snippets integration for SirVer ultisnip
Plug 'SirVer/ultisnips'			-- Snippet engine written in vimscript
Plug 'honza/vim-snippets'		-- Some snippets

-- Plug 'dense-analysis/ale'		-- Linter
-- Icon Pack
Plug 'onsails/lspkind-nvim'					-- Add icons to LSP completion
Plug 'kyazdani42/nvim-web-devicons'
-- Git
Plug 'tpope/vim-fugitive'		-- Git
Plug 'rbong/vim-flog'

vim.call('plug#end')
