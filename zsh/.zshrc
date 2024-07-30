#Alias for fastfetch
alias ffetch='fastfetch'

# Aliases for eza commands
alias ls='eza --icons'
alias la='eza -a'
alias lla='eza -la'
alias lt='eza -TL 2'

# Aliases for yt-dlp.configs
alias yt-dlp-fhd='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp.conf'
alias yt-dlp-hd='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp-720.conf'
alias yt-dlp-audio='yt-dlp --config-location ~/.config/yt-dlp/yt-dlp-audio.conf'

# Alias for yazi
alias yz='yazi'

# source directories for custom plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh # This is added from brew
source /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh # This is addded from brew
source <(fzf --zsh) # This is added from brew

# Set default text edtior for terminal
export EDITOR='nvim'

# Disable brew update and hints (disable = 1)
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

# Other variable exports
export LS_COLORS="$(vivid generate catppuccin-mocha)"
export BAT_THEME="Catppuccin Mocha"
export BAT_CONFIG_PATH="/Users/randy99/.config/bat/config/bat.conf"
export LDFLAGS="-L/usr/local/opt/node@20/lib"
export CPPFLAGS="-I/usr/local/opt/node@20/include"

export FZF_DEFAULT_OPTS=" --preview 'bat -n --color=always {}' --bind=down:preview-down --bind=up:preview-up \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# Other path variable exports
export PATH="$PATH:$HOME/.local/bin"
export PATH="$JAVA_HOME/bin:$PATH"
export JAVA_HOME="$(/usr/libexec/java_home -v 21)"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/node@20/bin:$PATH"
export PATH="$PATH:$HOME/Documents/nand2tetris/tools"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pnpm
export PNPM_HOME="/Users/randy99/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Special init commands for custom packages
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

