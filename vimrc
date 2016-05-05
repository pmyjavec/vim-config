scriptencoding utf-8
set encoding=utf-8

set t_Co=256
set expandtab
set background=dark
set history=100         " Restore 111 things from viminfo
set autoindent
set shiftround
set viminfo=\"4,'4,/100,:100,h,f0
set laststatus=2
set tabstop=4
set softtabstop=4
set scrolloff=999
set visualbell
set ruler
set relativenumber
set autoread 
set backspace=2
set cursorline

" Search  settings
set hlsearch   " Highlight results
set ignorecase " Ignore casing of searches
set incsearch  " Start showing results as you type
set smartcase  " Be smart about case sensitivity when searching

autocmd FileType c,cpp,python,ruby,java,markdown set textwidth=120 autoindent wrap cc=120

" Markdown
autocmd BufRead,BufNewFile *.md setlocal spell


" Leader key is best when most accessible :)
let mapleader=';'
let g:EasyMotion_leader_key = '<Leader><Leader>'

map <Leader>t :CommandT<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>m :NERDTreeFocus<CR>
map <Leader>u :IndentGuidesToggle<CR>
map <Leader>w :write<CR>
map <Leader>q :wq<CR>
map <Leader>! :qall<CR>
map <Leader>b :TagbarToggle<CR>

if &t_Co > 2 || has("gui_running")
  syntax on
endif

if has("autocmd")
    filetype plugin indent on
  endif

" solarized options
let g:solarized_termtrans = 1

" Set my color scheme
colorscheme solarized

" NERDTree
 let NERDTreeIgnore = ['\.pyc$', '\.gem$', '\.out', '\.vim$', '\~$', '_site', '\.beam$']

" Stops conflicts with the Ack.vim plugin's quickfix window
" let g:pyflakes_use_quickfix = 0

" Tab completion settings
set wildmode=list:longest     " Wildcard matches show a list, matching the
longest first
set wildignore+=.git,.hg,.svn " Ignore version control repos
set wildignore+=.gems,.bin    " Ignore  ruby gems
set wildignore+=*.pyc         " Ignore Python compiled files
set wildignore+=*.swp         " Ignore vim backups
set wildignore+=*.beam        " Ignore vim backups


" Remove trailing white space on save for all filet ypes
autocmd BufWritePre * :%s/\s\+$//e

"Vim ruby tests
let g:vimux_ruby_cmd_unit_test = "nocorrect bundle exec rspec"
let g:vimux_ruby_cmd_all_tests = "nocorrect bundle exec rspec"
let g:vimux_ruby_cmd_context = "nocorrect bundle exec rspec"

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<c-j>"

" YCM Options
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_extra_conf_globlist = ['~/projects/c_prog_lang/','!~/*']
let g:ycm_global_ycm_extra_conf = '~/projects/dotfiles/ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

" Display punctuation marks for cleaner code
set listchars=tab:>.,trail:.,extends:#,nbsp:.

let g:clang_complete_auto = 1
let g:clang_use_library = 1
let g:clang_debug = 1
let g:clang_library_path = '/usr/lib/'
let g:clang_user_options='|| exit 0'

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Set airline theme
let g:airline_theme='base16_solarized'

" vim-puppet configuration
let g:puppet_80chars = 'false'

set backspace=indent,eol,start

