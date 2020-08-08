set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'racer-rust/vim-racer'
Plugin 'airblade/vim-gitgutter'
Plugin 'hashivim/vim-terraform'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"## General
set number	" # Show line numbers
set linebreak	" # Break lines at word (requires Wrap lines)
set showbreak=+++	" # Wrap-broken line prefix
set textwidth=100	" # Line wrap (number of cols)
set showmatch	" # Highlight matching brace
set visualbell	" # Use visual bell (no beeping)

set hlsearch	" # Highlight all search results
set smartcase	" # Enable smart-case search
set ignorecase	" # Always case-insensitive
set incsearch	" # Searches for strings incrementally

set autoindent	" # Auto-indent new lines
set shiftwidth=4	" # Number of auto-indent spaces
set smartindent	" # Enable smart-indent
set smarttab	" # Enable smart-tabs
set softtabstop=4	" # Number of spaces per Tab

"## Advanced
set ruler	" # Show row and column ruler information

set undolevels=1000	" # Number of undo levels
set backspace=indent,eol,start	" # Backspace behaviour
set splitright
set autochdir

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Golang
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command = 'goimports'    
let g:go_auto_type_info = 1         
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4

" Rust
let g:rust_clip_command = 'xclip -selection clipboard'
let g:rustfmt_autosave = 1
"let g:ycm_rust_src_path = '/home/zeus/.cargo/registry/src/github.com-1ecc6299db9ec823/rustls-0.18.0/src'
set hidden
let g:racer_cmd = "/home/zeus/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

" Terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" Theme
syntax enable
colorscheme dracula
