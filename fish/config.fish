if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/lucab/.lmstudio/bin
# End of LM Studio CLI section

alias ls='eza --color=auto --oneline --long --icons=auto'
alias find='fd'
alias startbl='sudo systemctl enable bluetooth.service'
alias stopbl='sudo systemctl disable bluetooth.service'
export EDITOR=vim
