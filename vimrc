" ==============================================================================
"
"    https://github.com/addyi
"
" ==============================================================================


" ========== Setup Vundle ==========
" For this to work, you must install the vundle plugin manually.
" https://github.com/gmarik/vundle

set nocompatible	" Fuck VI... That's for grandpas.
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Just a shitload of color schemes.
" https://github.com/flazz/vim-colorschemes#current-colorschemes
Plugin 'flazz/vim-colorschemes'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Fuzzy finder -- absolutely must have.
Plugin 'kien/ctrlp.vim'

" Support for easily toggling comments.
Plugin 'tpope/vim-commentary'

" Vim-Airline
Plugin 'bling/vim-airline'

" Markdown plugin
Plugin 'tpope/vim-markdown'

" highlight trailing whitespace characters (spaces and tabs)
Plugin 'ntpeters/vim-better-whitespace'
" :StripWhitespace

" All of your Plugins must be added before the following line
call vundle#end()			" required
filetype plugin indent on	" required
" To ignore plugin indent changes, instead use:
" filetype plugin on


" ========== Vim Behavior ==========

" We have VCS -- we don't need this stuff.
set nobackup		" We have vcs, we don't need backups.
set nowritebackup	" We have vcs, we don't need backups.
set noswapfile		" They're just annoying. Who likes them?

set hidden			" allow me to have buffers with unsaved changes.
set autoread		" when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase		" case insensitive search
set smartcase		" If there are uppercase letters, become case-sensitive.
set incsearch		" live incremental searching
set showmatch		" live match highlighting
set hlsearch		" highlight matches
set gdefault		" use the global flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

set showcmd			" show commands


" ========== Formatting ==========

set shiftround
set autoindent
set noexpandtab
" Set the tab width
let s:tabwidth=4
au filetype * let &l:tabstop = s:tabwidth
au filetype * let &l:shiftwidth = s:tabwidth
au filetype * let &l:softtabstop = s:tabwidth


" ========== Appearance ==========

syntax on										" syntax highlighting
set guifont=Source\ Code\ Pro\ Medium\ 12		" set font
set cursorline									" highlight current line
set t_Co=256									" 256 colors in terminal
colorscheme molokai								" set colorscheme
hi Normal ctermbg=NONE							" set background transparent
" set background=dark

set number 										" line number
set relativenumber								" relative line number

" whitespace character aperence
set list listchars=tab:›\ ,trail:-,extends:>,precedes:<,eol:¬

set laststatus=2 								" show vim-airline

" highlight the 80th column
highlight ColorColumn ctermbg=235 guibg=#2c2d27	" define color of colorcolumn
" let &colorcolumn="81,".join(range(120,500),",")	" define colorculumn numbers
let &colorcolumn="81"								" define colorculumn numbers

" ========== Mappings ==========

let mapleader=","

" Unmap the arrow keys
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

nmap <S-Enter> O<Esc>			" Insert line above
nmap <Enter> o<Esc>				" insert line below


" ========= Plugin Config =========

" NERDTree
let NERDTreeWinPos='right'
noremap <c-\> :NERDTreeToggle<cr>
noremap \nf :NERDTreeFind<cr>

" Map the key for toggling comments with vim-commentary
noremap <leader>c :Commentary<Enter>

