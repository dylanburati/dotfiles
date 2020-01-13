syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set hlsearch
set incsearch
set autoindent
set smartindent
set autoread
set so=7 " Lines to cursor
set history=700
set wildmenu
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]
"set nobackup
""set nowb
"set noswapfile
map j gj
map k gk
set pastetoggle=<F2>

autocmd Filetype javascript,css,html,json,yaml setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2
