:set nu
:set relativenumber
" └ => u2514
" ╰ => u2570
:set listchars=tab:\└—,trail:·,extends:»,precedes:«
:set list
:set nowrap
:set scrolloff=15

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

	" Make sure you use single quotes

	" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

	" plugin molto carino, non usato al momento, serve per allineare varie
	" righe in colonne (ES: file route di play)
	Plug 'junegunn/vim-easy-align'

	" la status bar 'Airline' e tema
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" plugin per utilizzare le abbreviazioni emmet per HTML
	Plug 'mattn/emmet-vim'

	" plugin che raggruppa molti colorscheme in un unico pacchetto
	" richiamabili con nei setting con: colorscheme <nome colorscheme"
	Plug 'flazz/vim-colorschemes'

	" visualizzatore cartelle ad albero
	Plug 'scrooloose/nerdtree'

	" Fuzzy file/buffer/tag etc per vim
	" da configurare bene
	Plug 'ctrlpvim/ctrlp.vim'

	" highlight per i file blade.php (FORSE OBSOLETO)
	Plug 'jwalton512/vim-blade'

	" pagina iniziale per vim, molto figo
	Plug 'mhinz/vim-startify'

call plug#end()

let NERDTreeHijackNetrw=1
let NERDTreeShowHidden=1

colorscheme brogrammer

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

let g:startify_bookmarks = [
		\ {'v': '~/.config/nvim/init.vim'},
	\ ]

let mapleader = "\<Space>"

" toggle buffer (switch between current and last buffer)
nnoremap <silent> <leader>bb <C-^>

" go to next buffer
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <C-l> :bn<CR>

" go to previous buffer
nnoremap <silent> <leader>bp :bp<CR>
nnoremap <C-h> :bp<CR>

" close buffer
nnoremap <silent> <leader>bd :bd<CR>

" kill buffer
nnoremap <silent> <leader>bk :bd!<CR>

" list buffers
nnoremap <silent> <leader>bl :ls<CR>
" list and select buffer
nnoremap <silent> <leader>bg :ls<CR>:buffer<Space>

" horizontal split with new buffer
nnoremap <silent> <leader>bh :new<CR>

" vertical split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>

map <leader>bq :bp<bar>sp<bar>bn<bar>bd<CR>. 

nnoremap <Leader>o :CtrlP<CR>

nnoremap <Leader>f :e .<CR>

" Mappo i comandi per muovermi tra le finestre
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l

set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set cc=80

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
