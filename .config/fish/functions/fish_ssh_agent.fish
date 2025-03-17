function fish_ssh_agent
    if not pgrep -u (whoami) ssh-agent > /dev/null
        eval (ssh-agent -c) &> /dev/null
        ssh-add /root/.ssh/id_rsa &> /dev/null
        ssh-add /root/.ssh/vpn_srv &> /dev/null
    end
end
