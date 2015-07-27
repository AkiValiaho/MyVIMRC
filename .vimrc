set relativenumber
set autoread
" hjkl to jklö 
noremap ö l
noremap l k
noremap k j
noremap j h
map <LEFT> <C-W>h
map <RIGHT> <C-W>l
map <DOWN> <C-W>j
map <UP> <C-W>k
noremap <C-S-n> :tabprev<CR>
noremap <C-n> :tabnext<CR>
map <C-T> :CtrlPBufTagAll<CR>
" leaderisetti
let mapleader = "-"
" Nopeiden bindien lisäämistä varten
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" Tallenna ja sulje tiedosto
nnoremap zz :w<CR>:q<CR>
" CtrlP file finderi
map <C-F> :CtrlP<CR>
" Organisoi Java Importit
map <C-I> :JavaImportOrganize<CR>
nmap - kmal:m 'a<CR>:delmarks a<CR>
nmap _ llmakk:m 'a<CR>:delmarks a<CR>
" esci jk:hon
inoremap jk <ESC>
filetype plugin indent on
let g:SuperTabDefaultCompletionType = 'context'
execute pathogen#infect()
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTree<CR>
nmap <F1> :ProjectList<CR>
set incsearch
syntax enable
" Taustatavaraa
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:neocomplcache_enable_at_startup = 1
let g:ctrlp_working_path_mode = 0
 let g:EclimCompletionMethod = 'omnifunc'
if !exists('g:neocomplcache_force_omni_patterns')
	let g:neocomplcache_force_omni_patterns = {}
endif
augroup filetype_as
autocmd Bufread,BufNewFile *.as set filetype=actionscript
augroup END
let g:neocomplcache_force_omni_patterns.java = '\k\.\k*'
""Java-setit
augroup filetype_java
autocmd!
autocmd BufRead *.java iabbrev main public static void main(final String[] args) {}
autocmd BufRead *.java iabbrev sout System.out.println();
autocmd BufRead *.java nnoremap gc f(a
augroup END
