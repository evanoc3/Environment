# Starting ssh-agent and adding identities
if [[ -d "$HOME/.ssh" ]]; then
    if [[ ! -v $SSH_AGENT_PID ]]; then
        eval $(ssh-agent -s) 1> /dev/null
    fi
    setopt extendedglob
    pubfiles=( "$HOME/.ssh/id_rsa^*.pub" )
    if type "ssh-add" > /dev/null; then
        ssh-add $~pubfiles 2> /dev/null
    else
        printf "Error: The command \"ssh-add\" was not found, SSH identities could not be added!\n\n"
    fi
fi