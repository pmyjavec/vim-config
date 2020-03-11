":=============================================================================
" Misc options
"=============================================================================
scriptencoding utf-8

syntax on                 " syntax highlighting for files
set wildmode=list:longest " Wildcard /command matches, order by longest first
set showcmd               " Show current pending command in the prompt

if !has('nvim') " Defaults which nvim already has
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

" Disable Mouse Support
set mouse=

" Tab settings
set expandtab       " Insert the right number of spaces
set tabstop=4       " Display n spaces for each tab
set softtabstop=4   " Display n spaces for each softtab
set shiftwidth=4    " Amount of spaces when re-indenting
set colorcolumn=80  " Highlight long lines

" Search  settings
set ignorecase " Ignore casing of searches
set smartcase  " Be smart about case sensitivity when searching

"=============================================================================
" Auto Commands
"=============================================================================
autocmd BufWritePre * :%s/\s\+$//e  "Remove trailing whitespaces

"=============================================================================
" Key Bindings
"=============================================================================
"
let mapleader=';' " Easy access to leader key

" Buffer management
nnoremap <silent> [b  :bprevious<CR>
nnoremap <silent> b]  :bnext<CR>
nnoremap <silent> [B  :bfirst<CR>
nnoremap <silent> B]  :blast<CR>
map      <Leader>ls    :ls<CR>

" Tab management
nnoremap <silent> [t  :tabprevious<CR>
nnoremap <silent> t]  :tabnext<CR>
nnoremap <silent> [T  :tabfirst<CR>
nnoremap <silent> T]  :tablast<CR>

" Easy Motion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap <SPACE> <Plug>(easymotion-s)
nmap <leader>j <Plug>(easymotion-bd-jk)
nmap <leader>k <Plug>(easymotion-bd-jk)
nmap <leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>j <Plug>(easymotion-overwin-line)
nmap <leader><leader>k <Plug>(easymotion-overwin-line)

map <Leader>t :FZF <CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>m :NERDTreeFocus<CR>
map <Leader>u :IndentGuidesToggle<CR>
map <Leader>s :write<CR>
map <Leader>q :wq<CR>
map <Leader>! :qall<CR>
map <Leader>b :TagbarToggle<CR>
map <Leader>a :Ag!<CR>
map <leader>h :noh<CR>

 " ViMux
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>

" Moving between splits easier
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fugitive
map <Leader>gw :Gwrite<CR>

" Fugitive
map <Leader>f :Black<CR>

"=============================================================================
" Plugin Settings
"=============================================================================

" NERDTree
 let NERDTreeIgnore=['\.pyc$', '\.gem$', '\.out', '\~$', '_site', '\.beam$', '__pycache__']

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<C-j>"

" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1 " Start

" base16 themes
let base16colorspace=256

" airline
let g:airline_powerline_fonts = 1

" FZF + Silver Searcher
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" vim-terraform
let g:terraform_fmt_on_save = 1

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" Syntastic
let g:syntastic_python_checkers = ['pylint']

"=============================================================================
" Display & theme settings
"=============================================================================

set t_Co=256               " Use 256 colors
set background=dark
set visualbell             " Flash screen on notifications
set scrolloff=999          " Centered cursor
set ruler                  " Show the line numbers
set relativenumber         " Line numbers relative to the cursor
set cursorline             " Highlight line the cursor is on
colorscheme                base16-monokai
