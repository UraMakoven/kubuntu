# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ura/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/ura/.fzf/bin"
fi

source <(fzf --zsh)
