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
set ruler
set laststatus=2
set confirm
set visualbell
set mouse=a
set cmdheight=2
" set number

set shiftwidth=2
set softtabstop=2
set expandtab


" Buffer Settings and Shortcuts
" http://flaviusim.com/blog/resizing-vim-window-splits-like-a-boss/
set winheight=30
set winminheight=5
nnoremap <silent> + :exe "resize " . (winheigt(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheigt(0) * 2/3)<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>l :ls<CR>:b<space>

" Finding files
" https://stackoverflow.com/questions/16082991/vim-switching-between-files-rapidly-using-vanilla-vim-no-plugins
set path=.,**
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>F :find <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>S :sfind <C-R>=expand('%:h').'/*'<CR>


" Recommended plugins
" vim-plug @ https://github.com/junegunn/vim-plug
" Ctrl-P @ https://github.com/ctrlpvim/ctrlp.vim
" AG for Vim @ https://github.com/rking/ag.vim
" fugitive @ https://github.com/tpope/vim-fugitive
