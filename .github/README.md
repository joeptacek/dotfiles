# dotfiles

manage dotfiles with git

## setup

### manual setup

backup or remove any dotfiles in `$HOME` that would otherwise be duplicated

clone to a bare repo in `$HOME`

```bash
git clone --bare https://github.com/joeptacek/dotfiles.git "${HOME}/.dotfiles.git"
```

move all dotfiles from master branch into `$HOME`

```bash
git --git-dir="${HOME}/.dotfiles.git" --work-tree="${HOME}" checkout master .
```

### bash script

this will clone to a bare repo in `$HOME`, move duplicates to `$HOME/.dotfiles.bk`, and then move dotfiles from master branch into `$HOME`

```bash
bash <(curl -fsS https://raw.githubusercontent.com/joeptacek/dotfiles/master/.dotfiles-install)
```

## usage

`.bashrc` contains alias `dotfiles-git` for using git to work with dotfiles in `$HOME`

```bash
alias dotfiles-git='git --git-dir="${HOME}/.dotfiles.git" --work-tree="${HOME}"'
```

check status of git repo etc.

```bash
source "${HOME}/.bashrc" # must reload .bashrc after initial checkout
dotfiles-git status
```

to track a new file, un-ignore it from `.gitignore` and then `dotfiles-git add` it

```bash
echo "!filename" >> ${HOME}/.gitignore
dotfiles-git add filename
```

## notes

with a freshly-cloned bare repo, you need to explicitly set the remote as upstream to push any local changes

```bash
dotfiles-git push -u origin master
```

instead of explicitly ignoring non-dotfiles with `.gitignore`, you can just have git keep quiet about untracked files; remove everything from `.gitignore` except `.dotfiles.git` itself

```bash
echo ".dotfiles.git" > "${HOME}/.gitignore
dotfiles-git config --local status.showUntrackedFiles no"
```

## further reading

* [hacker news thread](https://news.ycombinator.com/item?id=11070797)
* [atlassian blog post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
