# Mac Rice ^_^

These are the dotfiles of my personal macOS rice flavoured with catppuccin-mocha theme.

## Preview
![preview_01](/previews/preview_01.png)

## What's in?

1. `Kitty` terminal
2. `Starship` prompt
3. `ls` replaced with `eza`
4. `$LS_COLORS` managed with `vivid`
5. `zoxide` is configured (not aliased to cd though)
6. `fzf` for fuzzy finding
7. `cat` replaced with `bat`
8. `fsh` for syntax highlighting
9. `yazi` file explorer
10. `btop` system monitor
11. `neovim` (with LSP, Debugging, syntax highlighting and many more)
12. `tmux` (Configured to use vim keys)
13. `fastfetch` (No catppuccin colors yet but WIP)
14. `.hushlogin` file to disable "last login" message.

<br>

> NOTE: Check out my individual repos for the details of my neovim and tmux configs.

➡️ neovim repo -
<br>
➡️ tmux repo - 

## Prerequisites
I don't have a script to automate the nessaasy package installations at the moment. (it's WIP).

Till then, you need manually install packages to your system.

### for Mac users

1. Install xcode command line tools

```bash
xcode-select --install
```
2. install homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Install the nessary packages you need for your rice

```bash
# This will install all the packages I have used for the rice
brew install git wget gcc fd fzf ripgrep eza neovim tmux starship zsh-fast-syntax-highlighting yazi yt-dlp stow bat btop zoxide fastfetch && brew install --cask kitty firefox rectangle alt-tab
```

### for Linux users

** Just use your built in package manager and install the packages you need 😉

## How to use
I manage my dotfiles with GNU `stow`. follow the below steps to simlink the files to necessary locations.

1. Install stow using homebrew or with any package manager. (or build from source).

```bash
brew install stow # if using homebrew (macOS/linux)
```

2. clone the repo

```bash
git clone https://github.com/Chamal1120/mac_rice.git
```
3. Navigate to the directory

```bash
cd mac_rice
```

4. Simlink the configs you need with `stow`.

```bash
stow bat btop fsh kitty nvim starship tmux yazi yt-dlp zsh hushlogin # This command will symlink all the configs
```

## Credits

This project uses the following open-source packages and applications. Special thanks to their authors and maintainers:

- [Git](https://github.com/git/git) - A free and open source distributed version control system.
- [Wget](https://git.savannah.gnu.org/cgit/wget.git) - A network utility to retrieve files from the web.
- [homebrew](https://github.com/Homebrew/brew) - The missing package manager for macOS (or Linux).
- [eza](https://github.com/eza-community/eza) - A modern, maintained replacement for ls.
- [fd](https://github.com/sharkdp/fd) - A simple, fast and user-friendly alternative to 'find'.
- [fzf](https://github.com/junegunn/fzf) - A general-purpose command-line fuzzy finder.
- [ripgrep](https://github.com/BurntSushi/ripgrep) - A line-oriented search tool that recursively searches the current directory for a regex pattern.
- [vivid](https://github.com/sharkdp/vivid) - A themeable LS_COLORS generator with a rich filetype datebase.
- [Neovim](https://github.com/neovim/neovim) - Hyperextensible Vim-based text editor.
- [tmux](https://github.com/tmux/tmux) - A terminal multiplexer.
- [starship](https://github.com/starship/starship) - The minimal, blazing-fast, and infinitely customizable prompt for any shell.
- [zsh-fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting) - Fast syntax highlighting for Zsh.
- [yazi](https://github.com/sxyazi/yazi) - Yet another command line fuzzy finder.
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - A youtube-dl fork with additional features and fixes.
- [GNU Stow](https://git.savannah.gnu.org/cgit/stow.git) - A symlink farm manager.
- [bat](https://github.com/sharkdp/bat) - A cat(1) clone with syntax highlighting and Git integration.
- [btop](https://github.com/aristocratos/btop) - A monitor of resources.
- [zoxide](https://github.com/ajeetdsouza/zoxide) - A smarter cd command.
- [kitty](https://github.com/kovidgoyal/kitty) - A cross-platform, fast, feature-rich, GPU based terminal emulator.
- [Firefox](https://github.com/mozilla/gecko-dev) - The popular open-source web browser.
- [Rectangle](https://github.com/rxhanson/Rectangle) - Move and resize windows on macOS using keyboard shortcuts or snap areas.
- [Alt-Tab](https://github.com/lwouis/alt-tab-macos) - Windows alt-tab on macOS.

### Thanks N3RDS ❤️