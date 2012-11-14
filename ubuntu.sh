sudo apt-get update
sudo apt-get upgrade
sudo apt-get install openssh-server

sudo apt-get install build-essential git-core curl

# zsh
sudo apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

# RVM:
curl -L get.rvm.io | bash -s stable
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> .zshrc

git clone git://github.com/ikbear/Ubuntu-Env.git

# Tmux
sudo apt-get install tmux
cp Ubuntu-Env/tmux-conf ~/.tmux-conf

# Vim
sudo apt-get instlal vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp Ubuntu-Env/vimrc ~/.vimrc
vim +BundleInstall +qa

rm -rf Ubuntu-Env

# Ruby and Rails
sudo apt-get install zlib1g-dev
rvm install 1.9.3

# ImageMagick
sudo apt-get install libperl-dev gcc libjpeg62-dev libbz2-dev \
    libtiff4-dev libwmf-dev libz-dev libpng12-dev libx11-dev \
    libxt-dev libxext-dev libxml2-dev libfreetype6-dev liblcms1-dev \
    libexif-dev perl libjasper-dev libltdl3-dev graphviz gsfonts pkg-config
git clone git://github.com/ikbear/ImageMagick.git
cd Imagemagick
./configure & make
sudo make install
export LD_LIBRARY_PATH=/usr/local/lib
sudo /sbin/ldconfig.real –v
