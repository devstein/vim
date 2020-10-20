call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-repeat'
Plug 'mileszs/ack.vim'

" File Finder
Plug 'kien/ctrlp.vim'
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }


" Git
Plug 'airblade/vim-gitgutter'


Plug 'terryma/vim-multiple-cursors'
Plug 'justinmk/vim-sneak'

Plug 'scrooloose/nerdcommenter'

" Web development
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'mattn/emmet-vim', { 'for': 'html' }


Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'ervandew/supertab'

Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'chiel92/vim-autoformat'

Plug 'christoomey/vim-tmux-navigator'

" Both of these are for vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Style
Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'


" Formatting
Plug 'sbdchd/neoformat'

" Go 
Plug 'fatih/vim-go', {  'tag': 'v1.24', 'do': ':GoUpdateBinaries', 'for': 'go' }

" Python
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins','for': 'python' } " for Python semantic highlight

" Scala
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

" Terraform
Plug 'hashivim/vim-terraform'

" Documentation
Plug 'rizzatti/dash.vim'

" SQL
Plug 'vim-scripts/SQLComplete.vim', { 'for': 'sql' }
Plug 'vim-scripts/dbext.vim', { 'for': 'sql' }
" Maybe consider switching for formatter
" https://vimawesome.com/plugin/sqlutilities

" Code Exploration
Plug 'vim-scripts/taglist.vim'

"" FUTURE PLUGINS
" https://vimawesome.com/plugin/ultisnips
" https://github.com/davidhalter/jedi-vim or https://github.com/python-mode/python-mode 
" https://github.com/tpope/vim-unimpaired
" https://github.com/svermeulen/vim-easyclip


" MUST BE LAST
Plug 'ryanoasis/vim-devicons'

"" Initialize plugin system
call plug#end()


" Remap leader key
let mapleader = "\<Space>"

" jj and jk to escape
inoremap jj <esc>
inoremap jk <esc>

" Ctrl+C to yank to clipboard
vnoremap <C-c> "*y

" Always use spaces
set tabstop=2 shiftwidth=2 expandtab
 
" Color Scheme
syntax on

colorscheme onedark
let g:airline_theme='onedark'

" colorscheme nord
" colorscheme seoul256


let g:seoul256_background = 235
set background=dark

set termguicolors
set number

" Fonts
set conceallevel=3
set encoding=UTF-8
set guifont=SpaceMono\ Font:h11
let g:airline_powerline_fonts = 1

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

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
let g:syntastic_sql_checkers = ['sqlint']

" Nerd Tree 
set splitright
let NERDTreeShowHidden=1

"" Tree Explorer
map <leader>nt :NERDTreeToggle<CR> 

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
let g:neoformat_enabled_python = ['yapf', 'docformatter']
let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']
let g:neoformat_enabled_sql= ['pg_format']

let g:neoformat_sql_pg_format = {
            \ 'exe': 'pg_format',
            \ 'args': ['--wrap-limit 80'],
            \ }

let g:neoformat_run_all_formatters = 1

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

augroup fmt
  autocmd!
  autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.scss,*.py,*.sql undojoin | Neoformat
augroup END


" Ctrl P Ignore Node Modules
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Terraform
" https://github.com/hashivim/vim-terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" Markdown
" Disable auto folding
let g:vim_markdown_folding_disabled = 1


" Python for NVIM
let g:python3_host_prog = "/Users/devstein/.pyenv/versions/3.8.2/bin/python"

" Go
" https://github.com/fatih/vim-go-tutorial#vimrc-improvements

" Save files on :make. This enables auto save on :GoBuild
set autowrite

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>v  <Plug>(go-vet)
" autocmd FileType go nmap <leader>e  <Plug>(go-if-err)

" Shortcuts for GoAlternate splits
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

"
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

let g:go_auto_type_info = 1

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1

" let g:go_auto_sameids = 1

" Goyo +_LimeLight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


" Neovim Terminal Mode
" https://neovim.io/doc/user/nvim_terminal_emulator.html
:tnoremap <Esc> <C-\><C-n>
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l



" https://vim.fandom.com/wiki/Search_for_visually_selected_text
" Maps // to search for visually selected text
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
