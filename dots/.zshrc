plugins=(git history history-substring-search brew)

# Path to your oh-my-zsh installation.
export ZSH="/Users/rk/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/templates/zshrc.zsh-template

for file in ~/.{exports,aliases,functions,secrets}; do
    source "$file";
done;
unset file;

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
