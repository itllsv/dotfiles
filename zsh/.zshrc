export ZSH="$HOME/.oh-my-zsh"
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'
export NVIM_APPNAME='lazyvim'

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-bat
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

alias vim="nvim"
alias n="nvim"
alias v="nvim"

alias gc="git commit -m"
alias ga="git add"

alias work="cd ~/Work && clear"
alias mc="cd ~/Work/portal-minha-claro/"
alias it="cd ~/Projects/"
alias dots="cd ~/.dotfiles"
alias conf="cd ~/.config"

alias nc="cd ~/.config/lazyvim/ && nvim init.lua"
alias zc="cd ~ && nvim ~/.zshrc"
alias zs="source ~/.zshrc && clear"
alias ttc="cd ~/.config/tmuxinator/ && nvim ."
alias wc="cd ~/.config/wezterm/ && nvim wezterm.lua"
alias tc="nvim ~/.tmux.conf"

alias tk="tmux kill-server"
alias tts="tmuxinator start"

alias cat="bat"
alias pn="pnpm"

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

bindkey '^I' autosuggest-accept
bindkey '^[[Z' menu-complete
