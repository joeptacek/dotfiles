# dotfiles

## setup

backup or remove any existing dotfiles in `$HOME`

clone to a bare repo in `$HOME`

```
git clone --bare https://github.com/joeptacek/dotfiles.git $HOME/.dotfiles.git
```

grab dotfiles

```
git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME checkout master
```

## usage

`.bashrc` contains alias `git-dotfiles` for using git to work with dotfiles in `$HOME` (e.g., `git-dotfiles status`).

to track a new file, unignore it from `.gitignore` before trying to do `git-dotfiles add`

```
echo "!<filename>" >> .gitignore
git-dotfiles add <filename>
```

for the first push after making local changes, need to explicitly set the remote as upstream

```
git-dotfiles push -u origin master
```
