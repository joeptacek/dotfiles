# This is the custom theme template for gitprompt.sh

# These are the defaults from the "Default" theme
# You just need to override what you want to have changed
override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"

  # Start with Solarized theme...
  GIT_PROMPT_STAGED="${Yellow}●"
  GIT_PROMPT_STASHED="${BoldMagenta}⚑ "
  GIT_PROMPT_CLEAN="${Green}✔"

  # Append new line before each prompt...
  GIT_PROMPT_START_USER="\n"
  GIT_PROMPT_START_ROOT="\n"

  # Typcial PS1, but yellow!
  GIT_PROMPT_END_USER="\n ${Yellow}${PathShort}${ResetColor} $ "
  GIT_PROMPT_END_ROOT="\n ${GIT_PROMPT_START_USER} # "

  # Separators etc.
  GIT_PROMPT_PREFIX=""
  GIT_PROMPT_SUFFIX=""
  GIT_PROMPT_SEPARATOR=" | "
}

reload_git_prompt_colors "Custom"
