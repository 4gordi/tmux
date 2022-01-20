.tmux
=====

Self-contained, pretty and versatile `.tmux.conf` configuration file.

![Screenshot](https://cloud.githubusercontent.com/assets/553208/19740585/85596a5a-9bbf-11e6-8aa1-7c8d9829c008.gif)

Installation
------------

Requirements:

  - tmux **`>= 2.3`** (soon `>= 2.4`) running inside Linux, Mac, OpenBSD, Cygwin
    or WSL
  - awk, perl and sed
  - outside of tmux, `$TERM` must be set to `xterm-256color`

Installing zsh, oh-my-zsh, vim, tmux, and other

```
$ apt-get install powerline zsh vim tmux python3-pip mc git htop -y

$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/4gordi/ohmyzsh/master/tools/install.sh)"
$ git clone https://github.com/4gordi/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
$ git clone https://github.com/4gordi/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

$ export PATH=/home/gordi/.local/bin:$PATH

$ pip3 install pyserver ipython virtualenv virtualenvwrapper python-math pillow jmespath tqdm flask pandas sqlalchemy arrow 
```

After install all packeges, we need download Powerline and patched Fonts

```
$ pip3 install git+git://github.com/Lokaltog/powerline
$ cd
$ mkdir projects

$ wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
$ wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

$ mv PowerlineSymbols.otf /usr/share/fonts/
$ fc-cache -vf /usr/share/fonts/
$ mv 10-powerline-symbols.conf /etc/fonts/conf.d/
$ pip3 show powerline-status
```
Add some string to .bashrc:

```
$ echo '
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh' >>~/.bashrc
```
To install, run the following from your terminal: (you may want to backup your
existing `~/.tmux.conf` first)

```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/4gordi/vim-plug/master/plug.vim
$ curl https://cli-assets.heroku.com/install.sh | sh

$ git clone https://github.com/4gordi/tmux.git ~/oh-my-tmux
$ cp ~/oh-my-tmux/.tmux.conf ~/.tmux.conf
$ cp ~/oh-my-tmux/.zshrc ~/.zshrc
$ cp ~/oh-my-tmux/.vimrc ~/.vimrc
$ cp ~/oh-my-tmux/python.plugin.zsh /home/gordi/.oh-my-zsh/plugins/python/python.plugin.zsh

$ cd
$ rm -rf oh-my-tmux
```
Open vim and type `:PlugInstall` and `:q`

If you want `Powerlevel10k` Theme for ZSH:

```
$ git clone --depth=1 https://github.com/4gordi/powerlevel10k.git ~/powerlevel10k
```

Open `~/.zshrc` and add strings:

```
source ~/powerlevel10k/powerlevel10k.zsh-theme
POWERLEVEL9K_MODE="nerdfont-complete"
```
Reboot system or input 

```
$ p10k configure
```
