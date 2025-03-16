function fish_ssh_agent
    if not set -q SSH_AUTH_SOCK
        set -Ux SSH_AUTH_SOCK (mktemp -u /tmp/ssh-agent.sock.XXXXXXXXXX)
        ssh-agent -a $SSH_AUTH_SOCK > /dev/null
        ssh-add /root/.ssh/id_rsa
    end
end
