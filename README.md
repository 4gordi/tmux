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

To install, run the following from your terminal: (you may want to backup your
existing `~/.tmux.conf` first)

```
$ git clone https://github.com/4gordi/tmux.git /path/to/oh-my-tmux
$ cp /path/to/oh-my-tmux/.tmux.conf ~/.tmux.conf
```



