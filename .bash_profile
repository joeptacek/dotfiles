# .bash_profile is sourced by login shells, and .bashrc is sourced by non-login shell. On macOS, terminal emulators source .bash_profile for new windows. Use .bashrc to store shared settings.

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
