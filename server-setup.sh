#####  Flat-UI Terminal Theme  #####
# FG #ecf0f1
# BG #181818
# Cursor #d35400
# BoldBlack #34495e
# Black #2c3e50
# BoldRed #e74c3c
# Red #c0392b
# BoldGreen #2ecc71
# Green #27ae60
# BoldYellow #f1c40f
# Yellow #f39c12
# BoldBlue #3498db
# Blue #2980b9
# BoldMagenta #9b59b6
# Magenta #8e44ad
# BoldCyan #1abc9c
# Cyan #16a085
# BoldWhite #ecf0f1
# White #bdc3c7
#####
# dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-shell-flatui.dconf
echo "[:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
foreground-color='rgb(236,240,241)'
palette=['rgb(24,24,24)', 'rgb(192,57,43)', 'rgb(39,174,96)', 'rgb(227,156,18)', 'rgb(41,128,185)', 'rgb(142,68,173)', 'rgb(22,160,133)', 'rgb(189,195,199)', 'rgb(85,85,85)', 'rgb(215,76,60)', 'rgb(46,204,113)', 'rgb(225,196,15)', 'rgb(52,152,219)', 'rgb(155,89,182)', 'rgb(26,188,156)', 'rgb(220,224,225)']
cursor-colors-set=false
use-theme-colors=false
background-color='rgb(24,24,24)'
audible-bell=false" > ~/gnome-shell-flatui.dconf

# su root
# adduser dylan sudo

# apt-get install openssh-server openssh-client
# apt-get install vim
# vim .ssh/authorized_keys
sudo apt-get install --assume-yes curl rsync man git host bzip2
sudo apt-get install --assume-yes nginx
sudo apt-get install --assume-yes openjdk-8-jdk maven
sudo apt-get install --assume-yes python3 python3-pip
sudo apt-get install --assume-yes php-fpm php-pear php-mysql php-cli php-common php-curl php-dev php-json php-mbstring php-mcrypt php-opcache php-readline
sudo apt-get install --assume-yes mariadb-client mariadb-server
sudo apt-get install --assume-yes certbot python-certbot-nginx
sudo apt-get install --assume-yes apt-transport-https ca-certificates curl gnupg2 software-properties-common

echo 'syntax enable
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
' > ~/.vimrc

sudo cp ~/.vimrc /root/

