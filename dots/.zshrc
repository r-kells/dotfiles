# Path to your oh-my-zsh installation.
export ZSH="/Users/rk/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git,
  history,
  history-substring-search,
  brew,
  # virtualenvwrapper
)

source $ZSH/oh-my-zsh.sh

for file in ~/.{exports,aliases,functions,secrets}; do
    source "$file";
done;
unset file;