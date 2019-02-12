call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'valloric/youcompleteme'
Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" Both of these are for vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'sbdchd/neoformat'

" Initialize plugin system
call plug#end()

" On boot
autocmd vimenter * NERDTree

" Remap leader key
let mapleader = "\<Space>"

" jk to escape
inoremap jk <esc>

" Color Scheme
syntax on

colorscheme onedark

set termguicolors

set number

set spell spelllang=en_us


" Spellcheck
set spell spelllang=en_us

" Correct Next Mispelling
nnoremap <leader>f 1z=

" Toggle Spellcheck
nnoremap <leader>s :set spell!

" Syntastic Configs 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['eslint']

" Nerd Tree 
set splitright
let NERDTreeShowHidden=1

" Neoformat 
let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']
let g:neoformat_run_all_formatters = 1

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

autocmd BufWritePre *.js,*.jsx,*.json,*.ts,*.css,*.scss Neoformat


" Ctrl P Ignore Node Modules
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
