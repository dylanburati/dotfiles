echo "[:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
foreground-color='rgb(236,240,241)'
palette=['rgb(24,24,24)', 'rgb(192,57,43)', 'rgb(39,174,96)', 'rgb(227,156,18)', 'rgb(41,128,185)', 'rgb(142,68,173)', 'rgb(22,160,133)', 'rgb(189,195,199)', 'rgb(85,85,85)', 'rgb(215,76,60)', 'rgb(46,204,113)', 'rgb(225,196,15)', 'rgb(52,152,219)', 'rgb(155,89,182)', 'rgb(26,188,156)', 'rgb(220,224,225)']
cursor-colors-set=false
use-theme-colors=false
background-color='rgb(24,24,24)'
audible-bell=false" > /tmp/gnome-shell-flatui.dconf
dconf load /org/gnome/terminal/legacy/profiles:/ < /tmp/gnome-shell-flatui.dconf

sudo apt-get update && sudo apt-get upgrade
sudo apt install curl git tmux vim zsh
#... load .vimrc
git config --global user.email "dylanburati@protonmail.com"
git config --global user.name "Dylan Burati"

chsh -s $(which zsh)
#% https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE' >> ~/.zshrc

#% https://asdf-vm.com/guide/getting-started.html
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.1
echo '. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit' >> ~/.zshrc
#... load and switch oh-my-zsh theme
#... enable oh-my-zsh plugins
. ~/.zshrc

#% https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt install build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

asdf plugin add python
#$ asdf list-all python 3.10 | less
asdf install python 3.10.9
asdf global python 3.10.9

asdf plugin add poetry
#$ asdf list-all poetry | less
asdf install poetry latest
asdf global poetry 1.3.2
poetry config virtualenvs.in-project true

#... load .ssh/id_ed25519
sudo apt install openssh-server

#% https://www.haskell.org/ghcup/install/#linux-ubuntu
sudo apt-get install build-essential curl libffi-dev libffi8ubuntu1 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5
#% https://www.haskell.org/ghcup/install
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
#% https://github.com/sestrella/asdf-ghcup
asdf plugin add cabal https://github.com/sestrella/asdf-ghcup.git
asdf plugin add ghc https://github.com/sestrella/asdf-ghcup.git
asdf plugin add hls https://github.com/sestrella/asdf-ghcup.git

asdf plugin add golang
#$ asdf list-all golang | less
asdf install golang latest
asdf global golang 1.20

asdf plugin add java
#$ asdf list-all java | less
asdf install java adoptopenjdk-jre-17.0.6+10
asdf global java adoptopenjdk-jre-17.0.6+10

#$ sudo mkdir /media/dylan/easystore
#$ sudo mount -t ntfs-3g -o windows_names,big_writes,uid=1000,gid=1000 /dev/sda1 /media/dylan/easystore
echo '# Removes color override for other-writable directories (all dirs in NTFS mounts are other-writable)
export LS_COLORS="$(echo "$LS_COLORS" | sed 's/ow=[^:]*/ow=01;34/' | head -n1)"' >> ~/.zshrc

