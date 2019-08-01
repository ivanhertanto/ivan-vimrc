" enable syntax highlighting
syntax on

" Vim UI
set tabpagemax=15
set showmode

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

set clipboard=unnamedplus

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4


" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline
hi cursorline guibg=#333333
hi CursorColumn guibg=#333333

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

set nocompatible              " be iMproved, required
filetype off                  " required


" au VimEnter * NERDTree

"Powerline Setting
" set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set laststatus=2
set showtabline=1
set noshowmode
set t_Co=256

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

" Use :RLHelp command to look up topics in help with your interest words.
" Plug 'januswel/rlhelp.vim'
" Plug 'cohama/lexima.vim'

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'mattn/emmet-vim'

" post install (yarn install | npm install)
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" markdown
Plug 'vim-pandoc/vim-pandoc', { 'for': 'markdown' }
Plug 'vim-pandoc/vim-pandoc-syntax', { 'for': 'markdown' }

" Use :RLHelp command to look up topics in help with your interest words.
" Plug 'januswel/rlhelp.vim'
Plug 'cohama/lexima.vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
" " Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle'  }
" " let g:nerdtree_tabs_open_on_console_startup = 1
Plug 'Xuyuanp/nerdtree-git-plugin'
" " ```vimscript
" " let g:NERDTreeIndicatorMapCustom = {
" "     \ "Modified"  : "✹",
" "     \ "Staged"    : "✚",
" "     \ "Untracked" : "✭",
" "     \ "Renamed"   : "➜",
" "     \ "Unmerged"  : "═",
" "     \ "Deleted"   : "✖",
" "     \ "Dirty"     : "✗",
" "     \ "Clean"     : "✔︎",
" "     \ "Unknown"   : "?"
" "     \ }
" "  ``````
"```


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
