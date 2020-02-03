"****************************************************************"
"******************** VIM CONFIGURATION FILE ********************"
"******************** Author: HungTran **************************"
"****************************************************************"



let vimplug_exists=expand('~/.local/share/nvim/site/autoload/plug.vim')

" --- Begin Plugin Manager -----------------

call plug#begin(expand('~/.config/nvim/plugged'))
	" Some Git stuff
	Plug 'tpope/vim-fugitive'

  " Comments code
  Plug 'tpope/vim-commentary'

	" LSP support
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'preservim/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'

	" UI stuff
	Plug 'dracula/vim', { 'as': 'dracula'  }
  Plug 'Yggdroot/indentLine'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'

  " Distraction-free writing
  Plug 'junegunn/goyo.vim'


call plug#end()

filetype plugin indent on

" Auto remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e






if has('mouse')
  set mouse=a
endif

syntax on
set t_Co=256
set number
set relativenumber
set autoread
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set pastetoggle=<F3>
set encoding=UTF-8
set nomodeline
set termguicolors

set background=dark
colorscheme dracula

"--- Nerdtree config
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

"--- Nerdtree tabs config
let g:nerdtree_tabs_open_on_console_startup=1

"--- Vim-airline config --------------
let g:airline#extensions#tabline#formatter = 'unique_tail'

"----------------Windows-----------
"--- Split windows -------------------
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
"--- Move Windows --------------------
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l

map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

"--- Resize Windows ------------------
nmap <C-w><left> <C-w> <
nmap <C-w><right> <C-w> >
nmap <C-w><up> <C-w> +
nmap <C-w><right> <C-w> -

