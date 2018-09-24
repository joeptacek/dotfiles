# dotfiles

my dotfiles

## install
use the dotfiles-install bash script from  [dotfiles-setup](https://github.com/joeptacek/dotfiles-setup)

```bash
bash <(curl -fsS https://raw.githubusercontent.com/joeptacek/dotfiles-setup/master/dotfiles-install) https://github.com/joeptacek/dotfiles
```

## use

make changes, stage, and commit
```bash
nano .bashrc
dotfiles-git add .bashrc
dotfiles-git commit -m "updated .bashrc"
```

push to remote

```bash
dotfiles-git push -u origin master # first push
dotfiles-git push # thereafter
```

## see also

* [hacker news thread](https://news.ycombinator.com/item?id=11070797)
* [atlassian blog post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
* [dotfiles-setup](https://github.com/joeptacek/dotfiles-setup)
