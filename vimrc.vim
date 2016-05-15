"=============================================================================
" Misc options
"=============================================================================
scriptencoding utf-8

syntax on " syntax highlighting for files

if !has('nvim')
    set autoindent                                " Use spaces not tabs by default
    set encoding=utf-8                            " Display specal and foreign charecters
    set autoread                                  " Reload file after begin written to outside of vim
    set backspace=2                               " http://vim.wikia.com/wiki/Backspace_and_delete_problems
    set history=1000                              " Remember commands entered
    set hlsearch                                  " Highlight search results
    set incsearch                                 " Start showing results as you type
    set laststatus=2                              " Show the status bar for all windows
    set listchars=tab:>.,trail:.,extends:#,nbsp:. " Show traiing whitepace etc
endif

" Tab settings
set expandtab     " Insert the right number of spaces
set tabstop=4     " Display n spaces for each tab
set softtabstop=4 " Display n spaces for each softtab
set shiftwidth=4  " Amount of spaces when re-indenting

" Search  settings
set ignorecase " Ignore casing of searches
set smartcase  " Be smart about case sensitivity when searching

set wildmode=list:longest     " Wildcard matches, order by longest first

"=============================================================================
" Auto Commands
"=============================================================================
autocmd BufWritePre * :%s/\s\+$//e  "Remove trailing whitespaces

"=============================================================================
" Key Bindings
"=============================================================================

let mapleader=';' " Easy access to leader key

let g:EasyMotion_leader_key='<Leader><Leader>'

map <Leader>t :CommandT<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>m :NERDTreeFocus<CR>
map <Leader>u :IndentGuidesToggle<CR>
map <Leader>w :write<CR>
map <Leader>q :wq<CR>
map <Leader>! :qall<CR>
map <Leader>b :TagbarToggle<CR>

"=============================================================================
" Plugin Settings
"=============================================================================

" NERDTree
 let NERDTreeIgnore=['\.pyc$', '\.gem$', '\.out', '\~$', '_site', '\.beam$']

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<c-j>"

" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1 " Start

" base16 themes
let base16colorspace=256

" airline
let g:airline_powerline_fonts = 1

"=============================================================================
" Display & theme settings
"=============================================================================

set t_Co=256               " Use 256 colors
set background=dark        " Set dark backgrounds by default
set visualbell             " Flash screen on notifications
set scrolloff=999          " Centered cursor
set ruler                  " Show the line numbers
set relativenumber         " Line numbers relative to the cursor
set cursorline             " Highlight line the cursor is on
colorscheme base16-monokai
