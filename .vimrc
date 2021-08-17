"------------------------------------------------------------
" Author: Zixuan Zhang — @zixuanzhang98
"
" Sections:
"     General
"     User interface
"     Colors and fonts
"     Files and backups
"     Text, tab and indent related
"     Visual mode related
"     Moving around, tabs, and buffers
"     Status line
"     Editing mappings
"     vimgrep searching and cope displaying
"     Spell checking
"     Plugins
"     Misc
"     Helper functions
"------------------------------------------------------------
" Comments in Vimscript start with a `"`.


"------------------------------------------------------------
" => General
"------------------------------------------------------------
let mapleader = " "  " set learder key
set encoding=utf-8
set noerrorbells " no more error sound cue

" Sets how many lines of history VIM has to remember
set history=500

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a


"------------------------------------------------------------
" => User interface
"------------------------------------------------------------
" UI Layout {{{
set number              " show line number
" set numberwidth=5
set relativenumber

set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu            " Enhance command-line completion
" set lazyredraw          " Don't redraw while executing macros (good performance config)
" set showmatch           " higlight matching parenthesis
" set fillchars+=vert:┃
" }}}

" Searching {{{
set ignorecase " Ignore case when searching
set hlsearch   " Highlight all matches
set incsearch  " Search as characters are entered
nnoremap \\ :noh<return> " Clear highlights on pressing \ (backslash) twice

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set smartcase
" }}}

nnoremap <leader><Bar> :vsplit<CR>
nnoremap <leader>- :split<CR>

" nnoremap <leader>+ :vertical resize +5<CR>
" nnoremap <leader>- :vertical resize -5<CR>

" Get a block cursor in normal mode and a thin one in insert mode {{{
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' | 
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
" }}}


"------------------------------------------------------------
" => Plugins
"------------------------------------------------------------
" Vim Plug Automatic installation {{{
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

" Vim Plug {{{
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes
call plug#begin('~/.vim/plugged') 

Plug 'morhetz/gruvbox'   " color theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' " status bar theme
Plug 'terryma/vim-smooth-scroll'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons' " dds filetype-specific icons to NERDTree files and folders
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Adds syntax highlighting to NERDTree based on filetype
Plug 'Xuyuanp/nerdtree-git-plugin' "shows Git status flags for files and folders in NERDTreePlug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'


" Plug 'jremmen/vim-ripgrep'
" Plug 'leafgarland/typescript-vim'
" Plug 'vim-utils/vim-man'
" Plug 'git@github.com:kien/ctrlp.vim.git'
" Plug 'derekwyatt/vim-scala'
" Plug 'elixir-editors/vim-elixir'
" Plug 'fatih/vim-go'
" Plug 'janko-m/vim-test'
" Plug 'keith/swift.vim'
" Plug 'kien/ctrlp.vim'
" Plug 'leafgarland/typescript-vim'
" Plug 'moll/vim-node'
" Plug 'scrooloose/syntastic'
" Plug 'simnalamburt/vim-mundo'
" Plug 'tpope/vim-abolish'
" Plug 'vimwiki/vimwiki'
call plug#end() " Initialize plugin system
" }}}

" Use enter to accept a suggestion from YouCompleteMe
nnoremap gt :call CocActionAsync('jumpDefinition')<CR>
nnoremap gd :call CocActionAsync('doHover')<CR>

" nerdtree configuration
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>


" undotree  configuration
nnoremap <leader>u :UndotreeToggle<CR>


"------------------------------------------------------------
" => Colors and fonts
"------------------------------------------------------------
" Enable syntax highlighting
syntax enable

" Make it obvious where 80 characters is (Don't go over it :)
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

colorscheme gruvbox
set background=dark

" airline {{{
" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

let g:airline_theme = 'zenburn'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
" }}}


"------------------------------------------------------------
" => Files and backups
"------------------------------------------------------------
set noswapfile " don't create temp files
set nobackup " don't create `filename~` backups
set undodir=~/.vim/undodir
set undofile


"------------------------------------------------------------
" => Text, tab and indent related
"------------------------------------------------------------
" Spaces & Tabs {{{
set tabstop=4       " 4 space tab
set softtabstop=4   " 4 space tab
set shiftwidth=4
set expandtab       " use spaces for tab
set smarttab
set autoindent 
set smartindent
set wrap            " wrap lines
" set nowrap " or not
" set modelines=1
" filetype indent on
" filetype plugin on
" }}}


"------------------------------------------------------------
" => Editing mappings
"------------------------------------------------------------

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up>    :echoe "Use k"<CR>
" nnoremap <Down>  :echoe "Use j"<CR>
map <Down> <C-e>
map <Up> <C-y>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" remap VIM 0 to first non-blank character
map 0 ^

" map j + j to <ESC> in insert mode
inoremap jj <ESC>

" use space + h/j/k/l to switch panel
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 15, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 15, 2)<CR>

"keep cursor in the middle all the time :)
" nnoremap k kzz
" nnoremap j jzz
" nnoremap p pzz
" nnoremap P Pzz
" nnoremap G Gzz
" nnoremap x xzz
" inoremap <ESC> <ESC>zz
" nnoremap <ENTER> <ENTER>zz
" inoremap <ENTER> <ENTER><ESC>zzi
" nnoremap o o<ESC>zza
" nnoremap O O<ESC>zza
" nnoremap a a<ESC>zza

"------------------------------------------------------------
" => Misc
"-----------------------------------------------------------
" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""