call plug#begin('~/.vim/plugged')

" Color Theme
Plug 'mhartington/oceanic-next'

" Filetree
Plug 'preservim/nerdtree'

" Javascript/React development		
Plug 'dense-analysis/ale'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Window switching
Plug 't9md/vim-choosewin'
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

call plug#end()


syntax enable
set t_Co=256

colorscheme OceanicNext

" NERDTree Settings
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
autocmd BufWinEnter * silent NERDTreeMirror

" ALE Config
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \}

let g:ale_fixers = {
  \ 'javascript': ['prettier', 'eslint'], 
  \ 'css': ['prettier']
  \ }

" General vim settings
set relativenumber
