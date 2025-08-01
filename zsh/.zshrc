export ZSH="$HOME/.oh-my-zsh"
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'
export NVIM_APPNAME='nvim'

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

alias vim="nvim"
alias n="nvim"
alias v="nvim"

alias work="cd ~/Work && clear"
alias code="cd ~/Code && clear"
alias dots="cd ~/.dots && clear"
alias conf="cd ~/.config && clear"

alias nc="cd ~/.config/nvim/ && nvim init.lua"
alias zc="cd ~ && nvim ~/.zshrc"
alias zs="source ~/.zshrc && clear"
alias ttc="cd ~/.config/tmuxinator/ && nvim ."
alias ac="cd ~/.config/alacritty/ && nvim alacritty.toml"
alias tc="nvim ~/.tmux.conf"
alias hc="nvim ~/.config/hypr/hyprland.conf"

alias tk="tmux kill-server"
alias tts="tmuxinator start"

alias cat="bat"
alias pn="pnpm"

alias ls='exa --group-directories-first --icons'
alias ll='exa -lh --git --group-directories-first --icons'
alias la='exa -a --icons'

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# PNPM
export PNPM_HOME="/home/itllsv/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Lua
export LUA_PATH="/home/itllsv/lua-5.4.7/src/lua"
case ":$PATH:" in
  *":$LUA_PATH:"*) ;;
  *) export PATH="$LUA_PATH:$PATH" ;;
esac

# bindkey '^I' autosuggest-accept
# bindkey '^[[Z' menu-complete

bindkey '^I' menu-complete
bindkey '^[[Z' autosuggest-accept

export MANPAGER='nvim +Man!'
