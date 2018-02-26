## PROMPT

# Prompt (bash-git-prompt while in repo)
export PS1='\n \w $ '

## PATH

# Prioritize Homebrew in $PATH (better to do this than to edit /private/etc/paths)
export PATH="/usr/local/bin:$PATH"

# Add default user scripts directory to $PATH
export PATH="$HOME/bin:$PATH"

## SOURCING

# Source nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source chruby with auto-switching (wrap in file check?)
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# Source bash-completion
if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi

# Source / config bash-git-prompt (fancier version of default __git_ps1)
if [ -f /usr/local/share/gitprompt.sh ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_SHOW_UPSTREAM=1

  # Custom theme located in ~/.git-prompt-colors.sh
  GIT_PROMPT_THEME=Custom
  source /usr/local/share/gitprompt.sh
fi

## ALIASES

# ls -F (classify) -G (colorize) -l (long) -h (human readable sizes)
alias ll="ls -FGlh"

# ll -A (almost all)
alias lla="ll -A"

# ll */ (just directories)
alias lld="ll -d */"

# pwd with escaped spaces
alias pwds="printf '%q\n' '$(pwd)"

# Find .DS_Store recursively from current directory
alias ds="find . -name '.DS_Store'"

# Find + remove .DS_Store recursively from current directory
alias dsrm="find . -name '.DS_Store' -delete"

# Jekyll: Start verbose server and open
alias jekyll-serve-dev="bundle exec jekyll serve -oV"

# Jekyll: Hosting at all available local IPs including Jekyll's default 127.0.0.1:4000 (i.e., localhost:4000)
# as well as IP addresses reachable elsewhere on local network (e.g., via WiFi router).
alias jekyll-serve-dev-host="bundle exec jekyll serve -oV --host 0.0.0.0"

# Jekyll: Build in production mode
alias jekyll-build-prod="JEKYLL_ENV=production bundle exec jekyll build"

# Finder: show dotfiles
alias dotfiles-show="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"

# Finder: hide dotfiles
alias dotfiles-hide="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# Dotfiles
alias dotfiles-git='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

