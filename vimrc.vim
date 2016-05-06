"=============================================================================
" Misc options
"=============================================================================
scriptencoding utf-8

syntax on " syntax highlighting for files

if !has('nvim')
    set autoindent                                " Use spaces not tabs by default
    set autoread                                  " Reload file after begin written to outside of vim
    set backspace=2                               " http://vim.wikia.com/wiki/Backspace_and_delete_problems
    set encoding=utf-8                            " Display specal and foreign charecters
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

" Search  settings
set ignorecase " Ignore casing of searches
set smartcase  " Be smart about case sensitivity when searching

set wildmode=list:longest     " Wildcard matches, order by longest first


"=============================================================================
" Display & theme settings
"=============================================================================

colorscheme solarized
set t_Co=256        " I think this is needed for solarize
set background=dark " Dark solarize theme
set visualbell      " Flash screen on notifications
set scrolloff=999   " Centered cursor
set ruler           " Show the line numbers
set relativenumber  " Line numbers relative to the cursor
set cursorline      " Highlight line the cursor is on

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

" YCM Options
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf='~/projects/dotfiles/ycm_extra_conf.py'
let g:ycm_key_list_select_completion=['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion=['<S-TAB>', '<Up>']
let g:clang_complete_auto=1
let g:clang_use_library=1
let g:clang_debug=1
let g:clang_library_path='/usr/lib/'
let g:clang_user_options='|| exit 0'

" Set airline theme
let g:airline_theme='base16_solarized'

" vim-puppet configuration
let g:puppet_80chars='false'
