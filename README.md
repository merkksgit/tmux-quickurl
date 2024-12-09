# Tmux QuickURL

A simple tmux plugin that helps you quickly open URLs from a predefined list using fzf.

## Requirements

- tmux
- fzf
- xdg-open (usually pre-installed on Linux)

## Installation

### Using TPM (recommended)

Add this line to your `~/.tmux.conf`:

```tmux
set -g @plugin 'merkksgit/tmux-quickurl'
```

Press `prefix` + `I` to install the plugin.

### Manual Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/tmux-quickurl ~/.tmux/plugins/tmux-quickurl
```

Add this line to your `~/.tmux.conf`:

```tmux
run-shell ~/.tmux/plugins/tmux-quickurl/tmux-quickurl.tmux
```

## Usage

1. Add your URLs to `~/.quickurls`, one URL per line
2. Press `prefix` + `u` to open the URL picker
3. Select a URL using fzf
4. The URL will open in your default browser

## Configuration

You can change the default key binding in your `.tmux.conf`:

```tmux
set -g @quickurl-key 'U'  # Changes the key binding to prefix + U
```

## License

[MIT License](https://mit-license.org/)
