# Zi Xuan Zhang's dotfiles
## Terminal Setup
1. Create a `Projects` directory and clone this repo in it:
    ```shell
    mkdir Projects
    ```
2. Create symbolic links:
    ```shell
    ln -s ~/Projects/.dotfiles/.vimrc .vimrc
    ln -s ~/Projects/.dotfiles/.ideavimrc .ideavimrc
    ln -s ~/Projects/.dotfiles/.tmux.conf .tmux.conf
    ln -s ~/Projects/.dotfiles/.zshrc .zshrc
    ```
3. Install zsh plugins and libraries:
    ```shell
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


    # homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # neofetch
    brew install neofetch

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```
4. Install powerlevel10k:
    ```shell
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```
5. Suppresss powerlevel10k console output warining:
    ```shell
    vim ~/.p10k.zsh
    # change the following
    typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
    ```
5. Install [iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes):
    1. Download repo as a zip and unzip it
    2. In iTerm2 preferences, Profiles -> Colors -> Color Presets... -> import the schemes folder of the repo

## [vim-plug](https://github.com/junegunn/vim-plug)
[vimrc turorial](https://github.com/romainl/idiomatic-vimrc)
create .vim/undodir
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



## Neovim
You can follow the neovim tutorial with: `nvim +Tutor`

### Resources
https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
