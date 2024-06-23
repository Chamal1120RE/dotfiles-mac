# Alias for LSD ls commands
alias ls='eza --icons'
alias la='eza -a'
alias lla='eza -la'
alias lt='eza -TL 2'

# Alias for yt-dlp.conf
alias yt-dlp-fhd='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp.conf'
alias yt-dlp-hd='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp-720.conf'
alias yt-dlp-audio='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp-audio.conf'

# Path exports for custom packages
export PATH=$PATH:$HOME/.local/bin

# source directories for custom plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh # This is installed from brew
source /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh # This is installed from brew
source <(fzf --zsh) # This is installed from brew

export EDITOR='nvim'

# Brew update and hints config
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

export LS_COLORS="$(vivid generate catppuccin-mocha)"
export BAT_CONFIG_PATH="/Users/kenway213/.config/bat/config/bat.conf"
# pnpm
export PNPM_HOME="/Users/kenway213/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Special init commands for custom packages
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
