## PROMPT

# default prompt (bash-git-prompt used inside git repo)
export PS1='\n \w $ '

## PATH

# prioritize Homebrew in $PATH (better to do this than to edit /private/etc/paths)
export PATH="/usr/local/bin:$PATH"

# add default user scripts directory to $PATH
export PATH="$HOME/bin:$PATH"

## SOURCING

# load bash-completion
if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi

# load / set up bash-git-prompt
if [ -f /usr/local/share/gitprompt.sh ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_SHOW_UPSTREAM=1

  # custom theme is in ~/.git-prompt-colors.sh
  GIT_PROMPT_THEME=Custom
  source /usr/local/share/gitprompt.sh
fi

# load nvm with bash completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# load chruby with auto-switching (wrap in file test?)
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

## ALIASES

# ls -F (classify) -G (colorize) -l (long) -h (human readable sizes)
alias ll="ls -FGlh"

# ll -A (almost all)
alias lla="ll -A"

# ll */ (just directories; extra trailing slash due to -F)
alias lld="ll -d */"

# ll */ .*/ (just directories, including hidden)
alias llad="ll -d */ .*/"
alias llda="llad"

# find .DS_Store recursively from current directory
alias ds="find . -name '.DS_Store'"

# find + remove .DS_Store recursively from current directory
alias dsrm="find . -name '.DS_Store' -delete"

# show dotfiles in finder
alias dotfiles-show="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"

# hide dotfiles in finder (default)
alias dotfiles-hide="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# git for bare dotfiles repo in $HOME
alias dotfiles-git='git --git-dir="${HOME}/.dotfiles.git" --work-tree="${HOME}"'
