export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'
export NVIM_APPNAME='nvim'

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
alias wc="cd ~/.config/wezterm/ && nvim wezterm.lua"
alias tc="nvim ~/.tmux.conf"
alias hc="nvim ~/.config/hypr/hyprland.conf"

alias tk="tmux kill-server"
alias tts="tmuxinator start"

alias cat="bat"
alias pn="pnpm"

alias ls='exa --group-directories-first'
alias ll='exa -la --group-directories-first --no-time --no-user --no-filesize'
alias lll='exa -lha --group-directories-first'
alias la='exa -a'

alias neofetch="fastfetch"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey '^I' menu-complete
bindkey '^[[Z' autosuggest-accept

export MANPAGER='nvim +Man!'

# pnpm
export PNPM_HOME="/home/itllsv/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
