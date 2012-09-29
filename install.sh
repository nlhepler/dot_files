DIR="$( cd "$( dirname "$0" )" && pwd )"

git submodule init
git submodule update

# link in the vim environment 
if [ -L ~/.vim ]; then
    rm ~/.vim
else if [ -d ~/.vim ]; then
    echo "~/.vim directory exists! aborting!"
fi
fi
ln -sf ${DIR}/.vim ~/.vim

mkdir -p ~/.vim/{undo,autoload}
mkdir -p ~/.bin

# ln -sf ${DIR}/.bashrc ~/.bashrc
ln -sf ${DIR}/.profile ~/.profile
ln -sf ${DIR}/.bin/* ~/.bin
ln -sf ${DIR}/.gitconfig ~/.gitconfig
ln -sf ${DIR}/.npmrc ~/.npmrc
ln -sf ${DIR}/.tmux.conf ~/.tmux.conf
ln -sf ${DIR}/.vimrc ~/.vimrc
ln -sf ${DIR}/.zshrc ~/.zshrc
