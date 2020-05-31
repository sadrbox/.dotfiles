# .dotfiles
Linux and dev configuration files

```console
$ git clone https://github.com/sadrbox/.dotfiles.git /home/$USER/.dotfiles
$ cd /home/$USER/.dotfiles
$ find . -maxdepth 1 -type f -exec ln -sv {} ~/ \;
```
