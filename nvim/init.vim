call plug#begin('~/.config/nvim/plugins')

" Best colorscheme ever made
Plug 'gruvbox-community/gruvbox'
Plug 'CreaturePhil/vim-handmade-hero' 

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'
" Plug 'github/copilot.vim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'ray-x/lsp_signature.nvim'

" Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'tami5/lspsaga.nvim' " nightly 
" Plug 'simrat39/symbols-outline.nvim'
" Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" Neovim TreeSitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Debugger
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
" Plug 'mfussenegger/nvim-dap'
" Plug 'Pocco81/DAPInstall.nvim'
" Plug 'szw/vim-maximizer'

" Prettier
Plug 'sbdchd/neoformat'

" Statusbar
Plug 'nvim-lualine/lualine.nvim'
" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" FileTree
Plug 'kyazdani42/nvim-tree.lua'

" Terminal
Plug 'akinsho/toggleterm.nvim'

" Extra
Plug 'folke/todo-comments.nvim'

" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons' " vimscript
call plug#end()

lua << END
require('setup')
require('maps')
require('settings')
END

colorscheme gruvbox

" Make this keybinding with Lspsaga preview_definition
autocmd CursorHold * :Lspsaga hover_doc
