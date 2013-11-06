## Vim Me Up Some Ruby

Vim environment for ruby work.

Use pathogen

# Usage

```
cd ~/git
git clone git@github.com:rubytester/rubytester-vim.git
cd rubytester-vim
git submodule init && git submodule update
ln -sf ~/git/rubytester-vim/.vim
ln -sf ~/git/rubytester-vim/.vimrc
```

## Initial setup

Based on pathogen

```
mkdir .vim
cd .vim
mkdir autoload
curl -Sso autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
mkdir bundle
cd bundle
# now in bundle you can git clone any vim plugins and they will be loaded by pathogen. see vim-pathogen project
```

## Alternatives

- janus config disribution
  https://github.com/carlhuda/janus

- ls-pair vim config
  https://github.com/livingsocial/ls-pair
