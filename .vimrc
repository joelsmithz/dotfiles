
"                                be iMproved
"
"                       ███    ██ ██    ██ ██ ███    ███
"                       ████   ██ ██    ██ ██ ████  ████
"                       ██ ██  ██ ██    ██ ██ ██ ████ ██
"                       ██  ██ ██  ██  ██  ██ ██  ██  ██
"                       ██   ████   ████   ██ ██      ██

set mouse=a
set nocompatible " required
filetype off     " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" ================================================>

Plugin 'VundleVim/Vundle.vim' " VUNDLE ITSELF

Plugin 'qpkorr/vim-renamer'
Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'scrooloose/nerdtree' " NERDTree
Plugin 'rafi/vim-tinyline' " Simple statusline.
Plugin 'majutsushi/tagbar' " Tagbar..
Plugin 'ryanoasis/vim-devicons' " Devicons support.
Plugin 'mhinz/vim-startify' " Welcome screen
Plugin 'itchyny/vim-cursorword' " Underlines the word under the cursor.
Plugin 'wincent/command-t' " Fuzzy file browser. 'rake make' in plugin src dir to enable..
Plugin 'lervag/vimtex' " LateX plugin

" Colorschemes & Syntax highlighting
Plugin 'flazz/vim-colorschemes' " Colorschemes..
Plugin 'PotatoesMaster/i3-vim-syntax' " i3 config syntax

" Syntax highlighting & language improvements
Plugin 'fatih/vim-go'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Autocompletion plugins
Plugin 'Shougo/deoplete.nvim' " Actual autocomplete
Plugin 'zchee/deoplete-clang' " C/C++ 
Plugin 'nsf/gocode', {'rtp': 'nvim/'}
Plugin 'zchee/deoplete-go'

" ================================================>

call vundle#end()         " required
filetype plugin indent on " required

" Color config
syntax enable
syntax on
colorscheme vim-material
set t_CO=256

" Tagbar config
let g:tagbar_left = 1
let g:tagbar_width = 28

" Autocompletion config
call deoplete#enable() " Enable the autocompletion library.
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang/4.0.1/include/'
let g:deoplete#sources#clang#std = {'c': 'c11', 'cpp': 'c++1z', 'objc': 'c11', 'objcpp': 'c++1z'}

" Enable <Tab> autocomplete-autofill.
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"autocmd CompleteDone * pclose! " Close autocomplete preview window when done.

" Starts NERDTree and switchs to the main window on startup.
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w

" Smart indentation selection.
vnoremap > >gv
vnoremap < <gv

" Keybindings.
nmap <F8> :TagbarToggle<CR>
nnoremap <C-t> :CommandT<CR>
nnoremap <c-l> <Esc>/<++><Enter>"_c4l<Insert>

map <C-a> :tabnew<CR>
map <C-d> :tabclose<CR>
map <C-e> :tabn<CR>

autocmd FileType go map <C-s> :w<CR>:GoImports<CR>:GoFmt<CR>

" Start Tagbar on load if filetype is .go
autocmd VimEnter *.go Tagbar

" HTML Syntax support in template engines
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.goh set filetype=html
au BufNewFile,BufRead *.tmpl set filetype=html

" Indentation configuration
set smarttab
set shiftwidth=4
set tabstop=4 
set softtabstop=0
set colorcolumn=120
set clipboard=unnamedplus
set list
set listchars=tab:¦\ ,eol:¬
set nowrap " Disable break line
set number " Enables line numbers.
set relativenumber " Shows line number relative to the current line.
set ignorecase " Non case sensitive.
set hlsearch " Highlights all matched serach patterns.
highlight ExtraWhitespace guibg=#E06C75

" Enable gui-colors for neovim
if has("termguicolors")
    set termguicolors
endif

" NERDTree config
let g:NERDTreeWinPos = "right"
nnoremap q :NERDTreeToggle<Enter>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:tinyline_max_dirs = 2
let g:tinyline_max_dirs_chars = 4

" Aliases for typoists.
command W w
command Q q
command Wq wq
command WQ wq

" Font and encoding
set encoding=utf8
set guifont="AnonymicPowerline Nerd Font Bold" 16
