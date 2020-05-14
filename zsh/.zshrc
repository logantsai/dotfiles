source ~/.zplug/init.zsh

source ~/.dotfiles/runcom/.bash_profile

alias ls="ls --color=always"
alias ll="ls -al"

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
	bindkey '^[[A' history-substring-search-up
	bindkey '^[[B' history-substring-search-down
zplug "zsh-users/zsh-autosuggestions"
	bindkey ',' autosuggest-accept
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Load theme file
zplug "themes/ys", from:oh-my-zsh, as:theme
# zplug 'dracula/zsh', as:theme

zplug "wting/autojump", \
    from:"github", \
    as:command

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit

# Then, source plugins and add commands to $PATH
zplug load --verbose
