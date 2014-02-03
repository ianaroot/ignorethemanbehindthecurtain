syntax on
filetype plugin indent on
set textwidth=79
set shiftwidth=2
set number
set expandtab
set tabstop=2

" Allow me to change buffers without saving
set hidden

" Do not leave scrap files everywhere
set bdir=~/.vim/backup

" Be a good .git user
augroup gitcommit
  autocmd!
  au FileType gitcommit set tw=50
augroup END

" Reload .vimrc
nmap <Leader>s :exec "source ~/.vimrc\|echo 'Reloaded .vimrc'"<cr>

" Magic
inoremap jk <ESC>

" Toggle numbering modes
nnoremap <C-n><C-n> :set number! number?<CR>
nnoremap <C-n><C-r> :set relativenumber! relativenumber?<CR>
