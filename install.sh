###############################################################
# => Install Script
###############################################################

cd ~/.dot-vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Setting up base config ..."
echo "set runtimepath+=~/.dot-vim" > ~/.vimrc
# Load base config and plugins
echo "source ~/.dot-vim/vimrcs/basic.vim" >> ~/.vimrc
echo "source ~/.dot-vim/vimrcs/plugins.vim" >> ~/.vimrc

echo "Installing plugins ..."

vim +PlugInstall +qall

echo "Setting up extended config ..."
# Load extended configs
echo "source ~/.dot-vim/vimrcs/extended.vim" >> ~/.vimrc
echo "source ~/.dot-vim/gvimrcs/shortcuts.vim" > ~/.gvimrc

echo "Setting up ctags for go ..."
echo "set tags=~/.dot-vim/ctags/.ctags" >> ~/.vimrc

echo "Finished setting up! :)"

