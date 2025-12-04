" 
" ███╗   ██╗███████╗ ██████╗ ███╗   ██╗    ███╗   ██╗███████╗██╗  ██╗██╗   ██╗███████╗
" ████╗  ██║██╔════╝██╔═══██╗████╗  ██║    ████╗  ██║██╔════╝╚██╗██╔╝██║   ██║██╔════╝
" ██╔██╗ ██║█████╗  ██║   ██║██╔██╗ ██║    ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║███████╗
" ██║╚██╗██║██╔══╝  ██║   ██║██║╚██╗██║    ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║╚════██║
" ██║ ╚████║███████╗╚██████╔╝██║ ╚████║    ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝███████║
" ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝
"
" Neovim Configuration - "Neon Nexus" Cyberpunk Theme
" Matches desktop environment theming (Waybar, Mako, Wofi, Kitty, Hyprland)

" Enable syntax highlighting and filetype detection
syntax enable
filetype plugin indent on

" Set the colorscheme
colorscheme neon-nexus

" Basic editor settings
set number
set relativenumber
set cursorline
set scrolloff=8
set sidescrolloff=8
set wrap
set linebreak
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set clipboard=unnamedplus

" Enable true color support (important for cyberpunk theme)
set termguicolors

" Split settings
set splitbelow
set splitright

" Disable swap files and backup (modern workflow)
set noswapfile
set nobackup
set nowritebackup

" Enhanced command line
set wildmenu
set wildmode=longest:full,full
set showcmd

" Buffer settings
set hidden

" Timeout settings
set timeoutlen=300
set updatetime=300

" Sign column always on for consistent layout
set signcolumn=yes

" Mouse support
set mouse=a

" Custom statusline with cyberpunk styling
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0 ? '  '.l:branchname.' ' : ''
endfunction

set statusline=
set statusline+=%#StatusLine#
set statusline+=\ %f                                " File path
set statusline+=%m                                  " Modified flag
set statusline+=%r                                  " Readonly flag
set statusline+=%h                                  " Help flag
set statusline+=%w                                  " Preview flag
set statusline+=\ %{StatuslineGit()}               " Git branch
set statusline+=%=                                  " Switch to right side
set statusline+=\ %{&filetype}                     " File type
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}  " Encoding
set statusline+=\ %{&fileformat}                   " File format
set statusline+=\ %p%%                             " Percentage through file
set statusline+=\ %l:%c                            " Line:Column
set statusline+=\ 

" Always show status line
set laststatus=2

" Tab line configuration for cyberpunk styling
set showtabline=2

" Key mappings for better workflow
let mapleader = " "

" Quick save and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :wq<CR>

" Clear search highlighting
nnoremap <leader>h :nohlsearch<CR>

" Buffer navigation
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>
nnoremap <leader>d :bdelete<CR>

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split resizing
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>= <C-w>=

" Tab navigation
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tm :tabmove<CR>

" Quick editing of vimrc
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Visual mode mappings
vnoremap < <gv
vnoremap > >gv

" File type specific settings
autocmd FileType javascript,typescript,json,css,html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

" Cursor shape in different modes (for terminal compatibility)
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=#ff1493
match ExtraWhitespace /\s\+$/

" Auto-remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Auto-reload files changed outside of vim
set autoread
autocmd FocusGained,BufEnter * checktime