# Aliases for eza commands
alias ls='eza --icons'
alias la='eza -a'
alias lla='eza -la'
alias lt='eza -TL 2'

# Aliases for yt-dlp.configs
alias yt-dlp-fhd='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp.conf'
alias yt-dlp-hd='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp-720.conf'
alias yt-dlp-audio='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp-audio.conf'

# Path exports for custom packages
export PATH=$PATH:$HOME/.local/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# source directories for custom plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh # This is installed from brew
source /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh # This is installed from brew
source <(fzf --zsh) # This is installed from brew

# Set default text edtior for terminal
export EDITOR='nvim'

# Disable brew update and hints (disable = 1)
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

# LS_COLORS variable
export LS_COLORS="$(vivid generate catppuccin-mocha)"

# Custom bat config path
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