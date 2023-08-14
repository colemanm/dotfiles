## Setup

Make sure there's no default `.zshrc`, then create symlinks.

```shell
ln -s /path/to/zshrc.zsh .zshrc
ln -s /path/to/aliases.zsh .aliases
ln -s /path/to/functions.zsh .functions
```

Then load them up:

```shell
source ~/.zshrc
source ~/.aliases
source ~/.functions
```
