# Zixuan Zhang's dotfiles
[vimrc turorial](https://github.com/romainl/idiomatic-vimrc)

create .vim/undodir

## [vim-plug](https://github.com/junegunn/vim-plug)
[tips](https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation)
Vim Unix
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Neovim Unix, Linux
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

```


`PlugInstall`

`PlugUpdate`

Install [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
Install coc and language extensions
https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim