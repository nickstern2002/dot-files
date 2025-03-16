export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"


plugins=(
    git 
    zsh-interactive-cd
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias k="kubectl"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ $command[kubectl] ]] && source <(kubectl completion zsh)

alias hg='history | fzf --tac | awk "{\$1=\"\"; print substr(\$0,2)}" | xclip -selection clipboard'

alias log='git log --graph --pretty="format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset'\''" --abbrev-commit --date=relative'
