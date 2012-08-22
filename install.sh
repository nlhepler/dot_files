git submodule init
git submodule update
# ln -sf ~/.dot_files/.bashrc ~/.bashrc
ln -sf ~/.dot_files/.profile ~/.profile
mkdir -p ~/.vim/{undo,autoload}
mkdir -p ~/.bin
ln -sf ~/.dot_files/.bin/* ~/.bin
ln -sf ~/.dot_files/.gitconfig ~/.gitconfig
ln -sf ~/.dot_files/.vimrc ~/.vimrc
ln -sf ~/.dot_files/.vim ~/.vim
ln -sf ~/.dot_files/.tmux.conf ~/.tmux.conf
ln -sf ~/.dot_files/.zshrc ~/.zshrc
ln -sf ~/.dot_files/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
