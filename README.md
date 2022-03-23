# Oliver's Dotfiles

Configuration files for a happy operating system :)

## Instructions

```
oliver@oliver-arch:~ % git clone git@github.com:OliverEvans96/dotfiles.git
oliver@oliver-arch:~ % cd dotfiles
oliver@oliver-arch:~/dotfiles % stow */
```

Done! This creates symlinks to all the right places.

Alternatively, `stow zsh` to only use zsh-related dotfiles.
To stop using a set of dotfiles, just do

```
oliver@oliver-arch:~/dotfiles % stow -D i3
```

Enjoy!
