# VIM


## Setup

### 1. Install [`neovim`](https://github.com/neovim/neovim)

```bash
brew install neovim
pip install pynvim
npm install -g neovim
```

### 2. Alias `vim` and `vi` to `nvim`

```bash
# Add these lines to your ~/.bashrc or ~/.zshrc
alias vi="nvim"
alias vim="nvim"
```

### 3. Symlink `~/.vim/init.vim` to `~/.vimrc`

```bashh
ln -s ~/.vim/init.vim ~/.vimrc
```

### 4. Start modifying your `~/.vimrc`

A few of my preferred settings 
```vim
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

set termguicolors
" Always use line numbers
set number

" Spellcheck
set spell spelllang=en_us
```

### 5. Install Plugins via [vim-plug](https://github.com/junegunn/vim-plug) 

First install `vim-plug`
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then to start off, add the following to the top of your `~/.vimrc`


```vim
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

" File Finder
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

"" Initialize plugin system
call plug#end()
```

and run `:PlugInstall`


### 6. Explore [Vim Awesome](https://vimawesome.com/) to find plugins

