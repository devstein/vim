call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-repeat'
Plug 'mileszs/ack.vim'

" File Finder
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }


" Git
Plug 'airblade/vim-gitgutter'

Plug 'terryma/vim-multiple-cursors'
Plug 'ggandor/leap.nvim'

Plug 'scrooloose/nerdcommenter'

Plug 'mattn/emmet-vim', { 'for': 'html' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'sainnhe/sonokai'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'sainnhe/sonokai'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'


" Formatting
Plug 'sbdchd/neoformat'

" Go
Plug 'fatih/vim-go', {  'tag': 'v1.26', 'do': ':GoUpdateBinaries', 'for': 'go' }

" Python
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins','for': 'python' } " for Python semantic highlight

" Rust
Plug 'rust-lang/rust.vim'

" Terraform
Plug 'hashivim/vim-terraform'

" Cue
Plug 'jjo/vim-cue'

" Earthly
Plug 'earthly/earthly.vim', { 'branch': 'main' }

" SQL
Plug 'vim-scripts/SQLComplete.vim', { 'for': 'sql' }
Plug 'vim-scripts/dbext.vim', { 'for': 'sql' }
" Maybe consider switching for formatter
" https://vimawesome.com/plugin/sqlutilities

" Code Exploration
Plug 'vim-scripts/taglist.vim'

"" FUTURE PLUGINS
" https://vimawesome.com/plugin/ultisnips
" https://github.com/tpope/vim-unimpaired
" https://github.com/svermeulen/vim-easyclip
"
" Testing Copilot
Plug 'github/copilot.vim'

" Testing WakaTime
Plug 'wakatime/vim-wakatime'

" CoC  Plugins
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-tailwindcss3', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yank', {'do': 'yarn install --frozen-lockfile'}
Plug 'coc-extensions/coc-svelte', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-sqlfluff', {'do': 'yarn install --frozen-lockfile'}
Plug 'qiuxiang/coc-solidity', {'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/coc-pyright', {'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/coc-deno', {'do': 'yarn install --frozen-lockfile'}
" https://github.com/fannheyward/coc-react-refactor

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
let g:neoformat_enabled_python = ['black', 'docformatter']
let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']
let g:neoformat_enabled_typescript = ['prettier', 'eslint_d']

" https://github.com/SpaceVim/SpaceVim/issues/3221
let g:neoformat_typescriptreact_prettier = {
    \ 'exe': 'prettier',
    \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
    \ 'stdin': 1
    \ }

let g:neoformat_enabled_typescriptreact = ['prettier', 'eslint_d']

let g:neoformat_run_all_formatters = 1

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1


augroup fmt
  autocmd!
  " autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.scss,*.py,*.sql undojoin | Neoformat
  autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.py,*.sql undojoin | Neoformat
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
let g:python3_host_prog = "$HOME/.pyenv/shims/python3"

" Go
" https://github.com/fatih/vim-go-tutorial#vimrc-improvements
" https://github.com/golang/tools/blob/master/gopls/doc/vim.md#vim-go

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:go_fmt_command = "goimports"

autocmd FileType go let b:go_fmt_options = {
  \ 'goimports': '-local ' .
    \ trim(system('{cd '. shellescape(expand('%:h')) .' && go list -m;}')),
  \ }

" Use Coc for gd
let g:go_def_mapping_enabled = 0

" Save files on :make. This enables auto save on :GoBuild
set autowrite

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>tf <Plug>(go-test-func)
autocmd FileType go nmap <leader>v  <Plug>(go-vet)
autocmd FileType go nmap <leader>err <Plug>(go-iferr)
autocmd FileType go nmap <leader>cv <Plug>(go-coverage)
autocmd FileType go nmap <leader>ct <Plug>(go-coverage-toggle)

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


" Rust Config
let g:rustfmt_autosave = 1

" --------
" BEGIN -- CoC Config
" --------
" https://github.com/neoclide/coc.nvim/wiki/F.A.Q#some-highlight-groups-not-work-after-colorscheme-command
autocmd ColorScheme * call Highlight()

function! Highlight() abort
  hi Conceal ctermfg=239 guifg=#504945
  hi CocSearch ctermfg=12 guifg=#18A3FF
endfunction

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
      " \ coc#pum#visible() ? coc#pum#next(1) :
      " \ CheckBackspace() ? "\<Tab>" :
      " \ coc#refresh()

" https://github.com/neoclide/coc.nvim/wiki/F.A.Q#tab-not-working-well-with-copilotvim
let g:copilot_no_tab_map = v:true
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ exists('b:_copilot.suggestions') ? copilot#Accept("\<CR>") :
      \ CheckBackSpace() ? "\<Tab>" :
      \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <S-TAB>
      \ coc#pum#visible() ? coc#pum#prev(1):
      \ exists('b:_copilot.suggestions') ? copilot#Accept("\<CR>") :
      \ CheckBackSpace() ? "\<Tab>" :
      \ coc#refresh()


" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" --------
" END -- CoC Config
" --------

" Svelte Config
let g:vim_svelte_plugin_load_full_syntax = 1
let g:vim_svelte_plugin_use_typescript = 1


" Color Scheme
" After CoC config
syntax on

colorscheme onedark
let g:airline_theme='onedark'

" colorscheme nord
" colorscheme seoul256
" colorscheme tokyonight
autocmd vimenter * ++nested colorscheme tokyonight

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

" https://www.reddit.com/r/neovim/comments/ypvrwp/comment/ivmehp0/?utm_source=share&utm_medium=web2x&context=3
autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=400 }

" FZF Customization
" Set ctrl-p to search  git files
nnoremap <C-p> :GFiles<Cr>
