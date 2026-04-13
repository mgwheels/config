# Summary

My dotfiles and configurations I use for terminal stuff. Feel free to use anything in here. README may become outdated from time to time.

# Tech Stack

## Required

These tools must be installed for the configuration to work:

| Tool | Purpose | Install (macOS) | Install (Linux/WSL) |
|------|---------|----------------|---------------------|
| **Neovim** | Code editor (0.12.x+) | `brew install nvim` | `brew install nvim` or download from neovim.io |
| **ripgrep** | Fast code search (used by fzf-lua) | `brew install ripgrep` | `brew install ripgrep` |
| **fd** (fd-find) | Fast file finder (used by fzf) | `brew install fd` | `brew install fd` |
| **fzf** | Fuzzy finder | `brew install fzf` | `brew install fzf` |

## Optional

These tools enhance the experience but are not strictly required:

| Tool | Purpose | Install | Notes |
|------|---------|---------|-------|
| **Nerd Font** | Icons in terminal/editor | [nerd-fonts releases](https://github.com/ryanoasis/nerd-fonts/releases) | FiraCode, JetBrains Mono, or Cascadia recommended. Required for file/folder icons in nvim-tree, bufferline, fzf-lua |
| **tmux** | Terminal multiplexer | `brew install tmux` | Custom keybindings (Ctrl-a prefix, vim navigation) |
| **lazygit** | TUI git client | `brew install lazygit` | Requires `fzf` for some features |
| **xclip** | Clipboard (WSL) | `apt install xclip` | For tmux clipboard copy on WSL |
| **Homebrew** | Package manager | [brew.sh](https://brew.sh) | Used for most installations |
| **Oh My Bash** | Shell framework | `bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"` | Theme: agnoster |
| **NVM** | Node version manager | [nvm install script](https://github.com/nvm-sh/nvm) | Auto-loaded in .bashrc |
| **tmux plugins** | tmux-yank, tmux-resurrect | Manual install | See `.tmux.conf` for details |

---

# Dotfiles

## Bash

Configuration for bash shell using Oh My Bash framework.

**Files:**
- `.bashrc`

## Neovim

Configuration for Neovim code editor, stored in `~/.config/nvim`.

**Requirements:**
- Neovim `0.12.x` or later
- ripgrep (for fzf-lua grep functionality)
- Nerd Font (optional but recommended for icons)

## Tmux

Dotfiles for tmux terminal multiplexer.

**Files:**
- `.tmux.conf`

## Git

Git configuration with custom settings.

**Files:**
- `.gitconfig`

## lazygit

Terminal UI for git with Catppuccin theme.

**Files:**
- `.config/lazygit/config.yml`

---

# Terminal Functions

## docs

Enables quicker control over documents.

**Functions:**
- `docs` - Open documents directory
- `docs_cd` - Change to documents directory
- `docs_pull` - Pull documents from remote
- `docs_push` - Push documents to remote

## saved-pwd

Enables saving a directory for quicker access between terminals.

**Functions:**
- `get_pwd` - Get current saved directory
- `save_pwd` - Save current directory
- `swap_pwd` - Navigate to last saved directory while saving current dir (swap saved with current)
- `last_pwd` - Navigate to last saved directory
- `last_saved_pwd` - Show last saved directory
