```
ln -sfn /home/dom/dotfiles/.bash_aliases /home/dom/.bash_aliases
ln -sfn /home/dom/dotfiles/.bash_functions /home/dom/.bash_functions
ln -sfn /home/dom/dotfiles/.bashrc /home/dom/.bashrc
ln -sfn /home/dom/dotfiles/.env /home/dom/.env
ln -sfn /home/dom/dotfiles/.gitconfig /home/dom/.gitconfig
ln -sfn /home/dom/dotfiles/.gitignore /home/dom/.gitignore
ln -sfn /home/dom/dotfiles/.tmux.conf /home/dom/.tmux.conf
ln -sfn /home/dom/dotfiles/.vimrc /home/dom/.vimrc
ln -sfn /home/dom/dotfiles/.wgetrc /home/dom/.wgetrc
ln -sfn /home/dom/dotfiles/.bash_gpg /home/dom/.bash_gpg
ln -sfn /home/dom/dotfiles/.psqlrc /home/dom/.psqlrc
ln -sfn /home/dom/dotfiles/git_current_branch /home/dom/git_current_branch
``` 


`mkdir -p ~/.vim/colors && cd ~/.vim/colors && curl -O https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim`

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

In Vim: `:PlugInstall`
