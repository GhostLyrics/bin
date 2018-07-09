# bin (GLY edition)

This is a collection of scripts and aliases intended to be cloned and symlinked to `~/bin`.

Configuration - if necessary - is done via environment variables. More complex things might get additional configuration, but I prefer to keep this as simple as possible.

Scripts will notify you of missing components. To check how this works, see `lib.sh`.

## Usage

```shell
git clone git@github.com:GhostLyrics/bin.git
ln -s ~/bin bin
```

For convenience, you can extend your `PATH` in your `.bash_profile`.

```shell
export PATH=$PATH:${HOME}/bin
```
