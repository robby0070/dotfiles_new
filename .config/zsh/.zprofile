export EDITOR="nvim"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export EDITOR="vim"
export VISUAL="code"
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"

export TERM=xterm-color

export PATH="$PATH:$(du "/home/obe/.scripts/" | cut -f2 | tr '\n' ':')"

#NEOVIDE
export NEOVIDE_MULTIGRID=true

# GOPATH 
export GOPATH=$HOME/lng/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$GOPATH/bin:$PATH
# ANDROID
export ANDROID_SDK_ROOT=/opt/android-sdk
export ANDROID_HOME=/opt/android-sdk/
PATH=$PATH:$ANDROID_HOME/emulator
PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/tools/bin
PATH=$PATH:$ANDROID_HOME/platform-tools

# WAYLAND
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export GDK_BACKEND="wayland,x11"
export MOZ_ENABLE_WAYLAND=1

# Clean up
export XDG_DATA_HOME="$HOME"/.data
export XDG_CACHE_HOME="$HOME"/.cache
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0" export LESSHISTFILE="-"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export LESSHISTFILE=-
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

