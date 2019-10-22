call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-repeat'

" Git
Plug 'airblade/vim-gitgutter'


Plug 'terryma/vim-multiple-cursors'
Plug 'justinmk/vim-sneak'

Plug 'scrooloose/nerdcommenter'

" Web development
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'

Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'ervandew/supertab'

Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'chiel92/vim-autoformat'

Plug 'christoomey/vim-tmux-navigator'

" Both of these are for vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Style
Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'


" Formatting
Plug 'sbdchd/neoformat'

" Go 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Python
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } " for Python semantic highlight

" Scala
Plug 'derekwyatt/vim-scala'


" FUTURE PLUGINS
" https://vimawesome.com/plugin/ultisnips
" https://github.com/davidhalter/jedi-vim or https://github.com/python-mode/python-mode 
" https://github.com/tpope/vim-unimpaired
" https://github.com/svermeulen/vim-easyclip



"" Initialize plugin system
call plug#end()

" On boot
autocmd vimenter * NERDTree

" Remap leader key
let mapleader = "\<Space>"

" jk to escape
inoremap jk <esc>

" Always use spaces
set tabstop=2 shiftwidth=2 expandtab
 
" Color Scheme
syntax on

colorscheme onedark
" colorscheme nord
" colorscheme seoul256


let g:seoul256_background = 235
set background=dark


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
let g:syntastic_python_checkers=['flake8']
let g:syntastic_yaml_checkers = ['yamllint']

" Nerd Tree 
set splitright
let NERDTreeShowHidden=1

" Show indents guides (Toggle with <Leader>ig)
let g:indent_guides_enable_on_vim_startup = 1

" Nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" Neoformat 
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']

let g:neoformat_run_all_formatters = 1

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

augroup fmt
  autocmd!
  autocmd BufWritePre *.js,*.jsx,*.ts,*.json,*.css,*.scss,*.py undojoin | Neoformat
augroup END


" Ctrl P Ignore Node Modules
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
