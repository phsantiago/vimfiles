# vimfiles

To install, just use:
```
Linux:
cd /tmp && git clone https://github.com/vim/vim.git && cd vim
./configure --with-features=huge --prefix=/usr/local
make && sudo make install

Macos:
brew install macvim --with-override-system-vim
brew link --overwrite macvim

git clone https://github.com/phsantiago/vimfiles.git ~/vimfiles
ln -s ./vimfiles/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
