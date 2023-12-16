:set number " line numbers
" :set relativenumber " relative line numbers

:set cursorline
:set colorcolumn=80

" whitespace character aperence
:set list listchars=tab:›\ ,trail:-,extends:>,precedes:<,eol:¬

" Indentation
:set autoindent
:set smarttab
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4

:set mouse=a " enable mouse mode

" We have VCS -- we don't need this stuff.
:set nobackup
:set nowritebackup
:set noswapfile

:set hidden " allow me to have buffers with unsaved changes
:set autoread " reload files changed outside of Vim not currently modified

" Search
:set ignorecase " case insensitive search
:set smartcase " If there are uppercase letters, become case-sensitive
:set incsearch " live incremental searching
:set showmatch " live match highlighting
:set hlsearch " highlight matches
:set gdefault " use the global flag by default
