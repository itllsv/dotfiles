export ZSH="$HOME/.oh-my-zsh"
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'
export XAI_API_KEY="xai-BgGHZu6LAKvuuwDwazpWqme9rrxLqLkMyUIp78tUsiMicHJwJx8nmHVREHoPZ2waPzopHrgBOTmalRAq"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

alias vim="nvim"
alias n="nvim"
alias v="nvim"

alias w="cd ~/Work && clear"
alias p="cd ~/Projects/ && clear"

alias nc="cd ~/.config/nvim/ && nvim init.lua"
alias zc="cd ~ && nvim ~/.zshrc"
alias zs="source ~/.zshrc && clear"
alias ttc="cd ~/.config/tmuxinator/ && nvim ."
alias wc="cd ~/.config/wezterm/ && nvim wezterm.lua" 
alias conf="cd ~/.config && la"

alias tc="nvim ~/.tmux.conf"
alias tk="tmux kill-server"
alias mc="tmuxinator start mc"
alias it="tmuxinator start it"
alias le="tmuxinator start le"

alias pn="pnpm"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PNPM_HOME="/home/itllsv/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export LUA_PATH="/home/itllsv/lua-5.4.7/src/lua"
case ":$PATH:" in
  *":$LUA_PATH:"*) ;;
  *) export PATH="$LUA_PATH:$PATH" ;;
esac

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
