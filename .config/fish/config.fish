set -Ux EDITOR nvim
set -g -x fish_greeting 'Hello, Max!'

alias cd..='cd ..'
alias cfg='git --git-dir=$HOME/projects/dotfiles-mini/ --work-tree=$HOME'
alias r='ranger --choosedir=$HOME/.config/ranger/.rangerdir; cd (cat $HOME/.config/ranger/.rangerdir)'
alias v='nvim'
alias z='zellij'

fish_ssh_agent

if status is-interactive
    if not set -q ZELLIJ
        zellij
    end
end
