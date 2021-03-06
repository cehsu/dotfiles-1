#  ______     ______     __   __     ______   __     ______     ______   __     ______     __  __
# /\  ___\   /\  __ \   /\ "-.\ \   /\  ___\ /\ \   /\  ___\   /\  ___\ /\ \   /\  ___\   /\ \_\ \
# \ \ \____  \ \ \/\ \  \ \ \-.  \  \ \  __\ \ \ \  \ \ \__ \  \ \  __\ \ \ \  \ \___  \  \ \  __ \
#  \ \_____\  \ \_____\  \ \_\\"\_\  \ \_\    \ \_\  \ \_____\  \ \_\    \ \_\  \/\_____\  \ \_\ \_\
#   \/_____/   \/_____/   \/_/ \/_/   \/_/     \/_/   \/_____/   \/_/     \/_/   \/_____/   \/_/\/_/

# Preamble {{{

# Author:     Jesse Atkinson
# Email:      jesse@jsatk.us
# Source:     https://github.com/jsatk/dotfiles/blob/master/config/fish/config.fish
# Twitter:    @jsatk

# }}}

# Note: All git aliases and configs stored in ~/.gitconfig.
# Fish prompt can be modified via `fish_config` command or in ~/.config/fish/functions/fish_prompt.fish
# Fish functions are all stored in ~/.config/fish/functions/
# See: http://fishshell.com/docs/current/tutorial.html#tut_startup

# $PATH is set via $fish_user_paths with `set -U` so it persists.
# See: https://fishshell.com/docs/current/tutorial.html#tut_universal

# Universal Defaults
set BROWSER open safari
set EDITOR vim
set DEVELOPER ~/Developer

# For Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# Sets brew cask symlink to /Applications instead of ~/Applications
set -x HOMEBREW_CASK_OPTS '--appdir=/Applications'

# Golang workspace
set -x GOPATH $HOME/Developer

# For rbenv ruby version manager
# This modifies your path and adds the `.rbenv` folder to it.
if test -f /usr/local/bin/rbenv
	status --is-interactive; and . (rbenv init -|psub)
end

export powerline_symbols="$HOME/Dropbox (Personal)/dotfiles/fontpatcher/fonts/powerline-symbols.sfd"
export EDITOR
. ~/.vim-ghd-token
