#Definitions
source $HOME/.config/aliasrc
# Lines configured by zsh-newuser-install
setopt extendedglob nomatch
unsetopt autocd beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/steve/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

#History
HISTFILE=$HOME/.config/zsh_history
HISTSIZE=9999
SAVEHIST=9999
setopt appendhistory
