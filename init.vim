" Sam's Vim Setup
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-sensible'
	Plug 'junegunn/seoul256.vim'
	Plug 'yggdroot/indentline'
	"Plug 'valloric/youcompleteme'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'rust-lang/rust.vim'
call plug#end()

" Personal configuration
:set rnu
:set nu!
:set showcmd 
let g:seoul256_background = 256
colo seoul256-light
:autocmd InsertEnter,InsertLeave * set cul!
:set nowrapscan
:set ic
:set hlsearch
:hi Search ctermbg=LightYellow
:hi Search ctermfg=Red
nnoremap <F10> :set nu!<return>
nnoremap <C-Y> :tabprevious<CR>
nnoremap <C-O> :tabnext<CR>

" YouCompleteMe config
"let g:ycm_clangd_binary_path='clangd'

" Nerd Tree configuration
 " autocmd vimenter * NERDTree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 nnoremap <C-J> <C-W><C-J>
 nnoremap <C-K> <C-W><C-K>
 nnoremap <C-L> <C-W><C-L>
 nnoremap <C-H> <C-W><C-H>
 set splitbelow
 set splitright
 let NERDTreeShowHidden=1
 let g:NERDTreeWinSize=40
" f12 toggle nerd tree
 nnoremap <silent> <expr> <F12> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
