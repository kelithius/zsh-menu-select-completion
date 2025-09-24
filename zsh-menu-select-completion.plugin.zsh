# menu-select-completion.plugin.zsh
# ZSH Menu Select Completion Plugin
# Enables colorized menu selection for zsh completions

# Ensure compinit function is available
(( $+functions[compinit] )) || autoload -U compinit

# Load complist module for menu select functionality
zmodload -e zsh/complist || zmodload zsh/complist

# Initialize completion system only if not already done
(( $+_comps )) || compinit

# Enable menu select for completions
zstyle ':completion:*' menu select

# Use Tab to directly enter menu select mode
bindkey '^I' menu-select

# Set up LS_COLORS for colorized output with fallback
if command -v gdircolors >/dev/null 2>&1; then
    eval "$(gdircolors -b)"
elif command -v dircolors >/dev/null 2>&1; then
    eval "$(dircolors -b)"
fi

# Apply LS_COLORS to completion menu if available
[[ -z "$LS_COLORS" ]] || zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

