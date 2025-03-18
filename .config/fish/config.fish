set -Ux EDITOR nvim
set -g -x fish_greeting 'Hello, Max!'

set -g -x FZF_DEFAULT_OPTS "--height 40% --border rounded --layout reverse --pointer ▶ --marker ⇒ --margin=1,3"

alias cd..='cd ..'
alias cfg='git --git-dir=$HOME/projects/dotfiles-mini/ --work-tree=$HOME'
alias r='ranger --choosedir=$HOME/.config/ranger/.rangerdir; cd (cat $HOME/.config/ranger/.rangerdir)'
alias v='nvim'
alias z='zellij'

fish_ssh_agent

# Set up fzf key bindings
fzf --fish | source

if status is-interactive
    if not set -q ZELLIJ; and not set -q SSS_TTY
        zellij
    end
end
