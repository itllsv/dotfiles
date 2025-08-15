export ZSH="$HOME/.oh-my-zsh"  
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'
export NVIM_APPNAME='nvim'
export PATH="$HOME/.local/itllsv/applications/:$PATH"

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
)

if [ -n "$TMUX" ]; then
  export TERM=tmux-256color
fi

# yazi 
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function sshadd() {
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/itllsv
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export MANPAGER='nvim +Man!'

# pnpm
export PNPM_HOME="/home/itllsv/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(starship init zsh)"
eval "$(~/.local/bin/mise activate zsh)"

source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey '^I' menu-complete
bindkey '\\' autosuggest-accept

alias vim="nvim"
alias n="nvim"
alias v="nvim"

alias work="cd ~/Work && clear"
alias code="cd ~/Code && clear"
alias dots="cd ~/.dots && clear"
alias conf="cd ~/.config && clear"
alias pmc="cd ~/Work/portal-minha-claro/"

alias nc="cd ~/.config/nvim/ && nvim init.lua"
alias zc="cd ~ && nvim ~/.zshrc"
alias zs="source ~/.zshrc && clear"
alias ttc="cd ~/.config/tmuxinator/ && nvim ."
alias wc="cd ~/.config/wezterm/ && nvim wezterm.lua"
alias tc="nvim ~/.tmux.conf"
alias hc="nvim ~/.config/hypr/hyprland.conf"

alias tk="tmux kill-server"
alias tts="tmuxinator start"

alias pn="pnpm"

alias ls='exa --group-directories-first'
alias ll='exa -la --group-directories-first --no-time --no-user --no-filesize'
alias lll='exa -lha --group-directories-first'
alias la='exa -a'

alias neofetch="fastfetch"

function fv() {
  nvim $(fzf --preview 'bat --color=always {}')
}

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
