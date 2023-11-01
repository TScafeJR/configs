set number
set autochdir
set wildmenu
set wildmode=longest,list,full
set noexpandtab
set tabstop=2
set shiftwidth=2
" autocmd VimEnter * NERDTree | wincmd p
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" vim-plug
call plug#begin('~/.vim/plugged')
" plugin section
Plug 'HerringtonDarkholme/yats.vim'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
" end vim-plug
call plug#end()
