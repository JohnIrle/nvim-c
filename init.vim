if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Lsp
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'onsails/lspkind-nvim'

  " Neovim Tree sitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " Debugger Plugins
  Plug 'puremourning/vimspector'
  Plug 'szw/vim-maximizer'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'

  Plug 'vim-utils/vim-man'
  Plug 'tpope/vim-dispatch'

  " syntax
  Plug 'gruvbox-community/gruvbox'
  Plug 'octol/vim-cpp-enhanced-highlight'


  " telescope requirements...
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " formatting
  Plug 'sbdchd/neoformat'

call plug#end()

colorscheme gruvbox

lua require("plugins")
lua require("lsp")

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

let loaded_matchparen = 1
let mapleader = " "

" Control c to escape
inoremap <C-c> <esc>