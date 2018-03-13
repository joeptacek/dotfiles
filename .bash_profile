# bash runs .bash_profile for login shells and .bashrc for non-login shells; both are assumed to be loaded once you are in an interactive shell
# bash doesn't automatically run .bashrc if started as login shell
# on *nix terminal emulators run non-login shells by default thus frequently modify .bashrc (.profile or .bash_profile loaded on login for historical reasons?)
# on macOS terminal emulators need to run login shells by default because neither .profile nor .bash_profile are loaded on login

if [ -f ~/.bashrc ]; then
   source ~/.bashrc # now settings can go in .bashrc
fi
