:set nu
:set listchars=tab:\|—,trail:·,extends:»,precedes:«
:set list
:set nowrap

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'

Plug 'scrooloose/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'jwalton512/vim-blade'
Plug 'mhinz/vim-startify'

Plug 'mattn/emmet-vim'
"Plug 'justinmk/vim-dirvish' " file explorer strano

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" ^^ forse in futuro ^^

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'


" Initialize plugin system
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
