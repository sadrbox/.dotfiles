# .dotfiles
Linux and dev configuration files

```console
$ git clone https://github.com/sadrbox/.dotfiles.git /home/$USER/.dotfiles
$ cd /home/$USER/.dotfiles
```

Do after clone repo or execute bash install.sh
```console
$ find /home/$USER/.dotfiles -maxdepth 1 -type f -name ".*" -exec ln -sv {} ~/ \;
```
