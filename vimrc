" vimrc
" Jim Sheafer
" jim@sheafer.org
"
"
" +--------------------------------------------------------------------------+
" | General Settings |
" +--------------------------------------------------------------------------+
" set mapleader key to space; custom commands start with space in normal mode
let mapleader=" "

" set ; to : (no one uses ; anyway)
"nnoremap ; :

" always set autoindenting on
set autoindent

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" connect the vim and OS clipboards
set clipboard=unnamed

" copy the previous indentation on autoindenting
set copyindent

" highlight the current line
set cursorline

" highlight the current column
set cursorcolumn

" replace tabs with spaces
set expandtab

" Hide buffers instead of closing to open new files without writing current
set hidden

" remember more commands and search history
set history=1000

" ignore case when searching
set ignorecase

" show search matches as you type
set incsearch

" Fast macros with no redraw in the middle
set lazyredraw

" no backup files
set nobackup

" This is vim, not vi
set nocompatible

" don't beep
set noerrorbells

" no swap files
set noswapfile

" don't wrap lines
set nowrap

" Turn on line numbers
set number 				

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" number of spaces to use for autoindenting
set shiftwidth=2

" set show matching parenthesis
set showmatch

" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" use shiftwidth instead of softtabstop size
set softtabstop=-1

" a tab is two spaces
set tabstop=2

" change the terminal's title
set title

" use many muchos levels of undo
set undolevels=1000

" move viminfo into .vim/
set viminfofile="~/.vim/viminfo"

" don't beep; flash
set visualbell

" Use tab as the wildcard character
set wildchar=<Tab>

set wildignore=*.swp,*.bak,*.pyc,*.class

" Use the wildcard menu to pick from many
set wildmenu			

" Use the big wildcard menu
set wildmode=full

" Set Cursorline params
hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE

" +--------------------------------------------------------------------------+
" | Missing Commands |
" +--------------------------------------------------------------------------+
" quietly edit the vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" quietly reload the vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Turn off highlighting if it gets messy
map <silent> <leader><cr> :noh<cr>

" turn on Paste mode
map <leader>pp :setlocal paste!<cr>

" insert date in insert mode
iab ddate <c-r>=strftime("%d %b %y")<cr>

" insert time in insert mode
iab ttime <c-r>=strftime("%H:%M:%S")<cr>

" Write current file with sudo
" command W w !sudo tee "%" > /dev/null

" +--------------------------------------------------------------------------+
" | Plugins |
" +--------------------------------------------------------------------------+
"
" Vim native plugins!
" mkdir -pv ~/.vim/pack/plugins/start
" cd ~/.vim/pack/plugins/start
" git clone (plugins)
"
" load all the vim plugins in ~/.vim/pack/plugins/start
packloadall

" vim-airline configs -------------------------------------------------------+
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_y = ''
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" NERDTree configs ----------------------------------------------------------+
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" vim-colors-solarized configs ----------------------------------------------+
syntax enable
set background=dark
colorscheme solarized

" set the indent line character to light dots
let g:indentLine_char = '⦙'

" ALE configs ---------------------------------------------------------------+
" nicer format
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" 'X' for errors
let g:ale_sign_error = '✘'
" ⚠ for warnings
let g:ale_sign_warning = '⚠'
" only lint on save
"let g:ale_lint_on_text_changed = 'never'

" +--------------------------------------------------------------------------+
" END .vimrc
