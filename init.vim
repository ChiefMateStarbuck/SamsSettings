" Sam's Vim Setup
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-sensible'
	Plug 'junegunn/seoul256.vim'
	Plug 'yggdroot/indentline'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'rust-lang/rust.vim'
	Plug 'projekt0n/github-nvim-theme'
	Plug 'sheerun/vim-polyglot'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}	
call plug#end()

" Personal configuration
:set rnu
:set nu!
:set showcmd 
colo github_light
set termguicolors
:autocmd InsertEnter,InsertLeave * set cul!
:set nowrapscan
:set ic
:set hlsearch
map <esc> :noh <CR>
:hi Search ctermfg=Red
nnoremap <F10> :set nu!<return>
nnoremap <C-Y> :tabprevious<CR>
nnoremap <C-O> :tabnext<CR>


"COC extensions + setup
" GoTo code navigation.
set cmdheight=2
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-go', 'coc-python', 'coc-rust-analyzer', 'coc-tsserver']
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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

