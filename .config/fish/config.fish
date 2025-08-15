if status is-interactive
    # Commands to run in interactive sessions can go here
end

function sdk
    bash -c ". $HOME/.sdkman/bin/sdkman-init.sh && sdk $argv"
end



starship init fish | source
zoxide init fish | source
alias rm="rm -i"

uwufetch | lolcat

