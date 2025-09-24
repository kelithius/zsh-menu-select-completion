# ZSH Menu Select Completion

A ZSH plugin that enables colorized menu selection for completions, making tab completion more visual and user-friendly.

## Features

- **Visual Menu Selection**: Transform standard ZSH completions into an interactive menu
- **Colorized Output**: Uses `LS_COLORS` for syntax highlighting in completion menus
- **Cross-platform**: Works with both GNU `dircolors` and BSD `gdircolors`
- **Zero Dependencies**: Pure ZSH implementation with built-in fallbacks

## Installation

### Using Sheldon

Add to your `~/.config/sheldon/plugins.toml`:

```toml
[plugins.zsh-menu-select-completion]
github = "kelithius/zsh-menu-select-completion"
```

Or use the command line:

```bash
sheldon add zsh-menu-select-completion --github kelithius/zsh-menu-select-completion
```

### Manual Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/kelithius/zsh-menu-select-completion.git
   ```

2. Source the plugin in your `~/.zshrc`:
   ```bash
   source /path/to/zsh-menu-select-completion/zsh-menu-select-completion.plugin.zsh
   ```

## Usage

Once installed, the plugin automatically activates for all completions:

1. Type a command and press `Tab` twice to trigger menu selection
2. Use arrow keys to navigate through completion options
3. Press `Enter` to select, or `Esc` to cancel

Example:
```bash
ls <Tab><Tab>  # Shows colorized file menu
cd <Tab><Tab>  # Shows directory menu with colors
```

## How It Works

The plugin:
- Ensures the ZSH completion system is initialized
- Loads the `zsh/complist` module for menu functionality
- Configures `zstyle` settings for menu selection
- Sets up colorized output using `LS_COLORS`
- Binds `Tab` key directly to menu-select mode

## Compatibility

- **ZSH**: 4.3.11 or later
- **Systems**: macOS, Linux, BSD
- **Color Support**: Automatic detection of `gdircolors`/`dircolors`

## License

MIT License - see LICENSE file for details.