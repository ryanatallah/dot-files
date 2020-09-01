# Startup Guide

## Terminal

Install [iTerm 2](https://iterm2.com/).

## Option Navigation

Set up [option navigation](https://medium.com/@jonnyhaynes/jump-forwards-backwards-and-delete-a-word-in-iterm2-on-mac-os-43821511f0a).

Start with deletion by going to *Preferences* --> *Profiles* --> *Keys* --> *Left Option Key* --> `Esc+`

Then, set up left/right navigation by adding keyboard shortcuts with the following escape sequences:

- ⌥+←: `b`
- ⌥+→: `f`

## Colors

Create a new profile and change color preset to `Solarized Dark`.

## Shell

Install [command line tools for Mac](https://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/) with the command:
```
xcode-select --install
```

Set [up a new ssh key](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh) and register it with Github.

Create the directory path `~/Code/github.com/ryanatallah`. In that directory.

Clone the [`sysetm-setup`](https://github.com/ryanatallah/system-setup) repository:
```
git clone git@github.com:ryanatallah/system-setup.git
```

Install dot-files:
```
cd system-setup/dot-files
./install.sh
```

Install [Vundle](https://github.com/VundleVim/Vundle.vim), and install all plugins.

Install [oh-my-zsh](https://ohmyz.sh/#install)

