DIR="$( cd "$( dirname "$0" )" && pwd )"

git submodule init
git submodule update
# ln -sf ${DIR}/.bashrc ~/.bashrc
ln -sf ${DIR}/.profile ~/.profile
ln -sf ${DIR}/.vim ~/.vim
mkdir -p ~/.vim/{undo,autoload}
mkdir -p ~/.bin
ln -sf ${DIR}/.bin/* ~/.bin
ln -sf ${DIR}/.gitconfig ~/.gitconfig
ln -sf ${DIR}/.npmrc ~/.npmrc
ln -sf ${DIR}/.tmux.conf ~/.tmux.conf
ln -sf ${DIR}/.vimrc ~/.vimrc
ln -sf ${DIR}/.zshrc ~/.zshrc
ln -sf ${DIR}/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
