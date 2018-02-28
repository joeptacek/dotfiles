# dotfiles

## setup

backup or remove any existing dotfiles in `$HOME`

clone to a bare repo in `$HOME`

```
git clone --bare https://github.com/joeptacek/dotfiles.git $HOME/.dotfiles.git
```

move dotfiles into `$HOME`

```
git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME checkout master
```

## usage

`.bashrc` contains alias `git-dotfiles` for using git to work with dotfiles in `$HOME` (e.g., `git-dotfiles status`)

```
alias git-dotfiles='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
```

to track a new file, un-ignore it from `.gitignore` before trying to do `git-dotfiles add`

```
echo "!<filename>" >> $HOME/.gitignore
git-dotfiles add <filename>
```

## notes

for the first push after making local changes, you need to explicitly set the remote as upstream

```
git-dotfiles push -u origin master
```

instead of explicitly ignoring non-dotfiles with `.gitignore`, you can just have git keep quiet about untracked files; remove everything from `.gitignore` except `.dotfiles.git` itself

```
echo ".dotfiles.git" > $HOME/.gitignore
git-dotfiles config --local status.showUntrackedFiles no
```

## further reading

* [hacker news thread](https://news.ycombinator.com/item?id=11070797)
* [atlassian blog post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
