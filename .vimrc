" Reload with :so % or :so ~/.vimrc
nnoremap <leader>r :so ~/.vimrc<CR>

" basics
" http://vim.wikia.com/wiki/Example_vimrc

set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set confirm
set visualbell
set mouse=a
set ttymouse=xterm2
set cmdheight=2

set splitbelow
set splitright

set shiftwidth=2
set softtabstop=2
set expandtab

" Statusline
set ruler
set laststatus=2

" Clear highlight on ESC
nnoremap <esc> :noh<return><esc>

" Autoread - update buffers when files have changed
" set autoread
" autocmd FocusGained * checktime


" Buffer Settings and Shortcuts
" http://flaviusim.com/blog/resizing-vim-window-splits-like-a-boss/
set winheight=10
set winminheight=3
nnoremap <silent> + :exe "resize " . (winheigt(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheigt(0) * 2/3)<CR>

nnoremap <leader>l :ls<CR>:b<space>

" Finding files
" https://stackoverflow.com/questions/16082991/vim-switching-between-files-rapidly-using-vanilla-vim-no-plugins
set path+=**
set wildignore+=**/node_modules/**
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>F :find <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>S :sfind <C-R>=expand('%:h').'/*'<CR>

command! -nargs=1 JsFind vim "<args>" ./**/*.js
nnoremap <leader>jf :JsFind 

" File Browsing
" let g:netrw_banner=0
let g:netrw_liststyle=3 " tree view

" Easy Cut/Copy
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR>

" Git
nnoremap <leader>gs :!clear && git s<CR>
nnoremap <leader>gl :!clear && git l<CR>

" Backup files path
" set backupdir=~/.vim/tmp//
" set directory=~/.vim/tmp//


" Plugins
" Install with :PlugUpdate
nnoremap <leader>rp :PlugUpdate
call plug#begin('~/.vim/plugged')
" vim-plug @ https://github.com/junegunn/vim-plug

" vim-prettier @ https://github.com/prettier/vim-prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Ctrl-P @ https://github.com/ctrlpvim/ctrlp.vim
" AG for Vim @ https://github.com/rking/ag.vim
" fugitive @ https://github.com/tpope/vim-fugitive
call plug#end()

" Prettier Config
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'all'
