"------------------------------------------------------------
" Author: Zixuan Zhang — @zixuanzhang98
"
" Sections:
"    1.  General
"    2.  User interface
"    3.  Colors and fonts
"    4.  Files and backups
"    5.  Text, tab and indent related
"    6.  Visual mode related
"    7.  Moving around, tabs, and buffers
"    8.  Status line
"    9.  Editing mappings
"    10. vimgrep searching and cope displaying
"    11. Spell checking
"    12. Misc
"    13. Helper functions
"------------------------------------------------------------
" Comments in Vimscript start with a `"`.


"------------------------------------------------------------
" 1. General
"------------------------------------------------------------
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

"------------------------------------------------------------
" 2. User interface
"------------------------------------------------------------
" Searching {{{
set ignorecase " Ignore case when searching
set hlsearch   " Highlight all matches
set incsearch  " Search as characters are entered

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set smartcase
" }}}

" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
" }}}

" set lazyredraw " Don't redraw while executing macros (good performance config)

"------------------------------------------------------------
" 3. Colors and fonts
"------------------------------------------------------------
" Enable syntax highlighting
syntax enable

" Color Scheme
set termguicolors
" try
"     colorscheme termguicolors
" catch
" endtry


"------------------------------------------------------------
" 4. Files and backups
"------------------------------------------------------------


"------------------------------------------------------------
" 5. Text, tab and indent related
"------------------------------------------------------------


"------------------------------------------------------------
" 6. Visual mode related
"------------------------------------------------------------


"------------------------------------------------------------
" 7. Moving around, tabs, and buffers
"------------------------------------------------------------


"------------------------------------------------------------
" 8. Status line
"------------------------------------------------------------


"------------------------------------------------------------
" 9. Editing mappings
"------------------------------------------------------------
" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Remap VIM 0 to first non-blank character
" map 0 ^

" map j + j to <ESC> in insert mode
inoremap jj <ESC>


"------------------------------------------------------------
" 10. vimgrep searching and cope displaying
"------------------------------------------------------------


"------------------------------------------------------------
" 11. Spell checking
"------------------------------------------------------------


"------------------------------------------------------------
" 12. Misc
"------------------------------------------------------------


"------------------------------------------------------------
" 13. Helper functions
"------------------------------------------------------------