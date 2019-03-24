if [ -f ~/.bashrc ]; then
   	source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# Android
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

# AWS
export AWS_DEFAULT_PROFILE="default"

# Fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# Gnubin
export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

# Go
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export PATH="$HOME/go/bin:$PATH"
export PATH="/usr/local/opt/go/libexec/bin:$PATH"

# LLVM
export LLVM_DIR="/usr/local/Cellar/llvm@4/4.0.1/lib/cmake"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home"
export CATALINA_HOME="/usr/local/Cellar/tomcat/8.5.24/libexec"

# Klab
export PATH="$HOME/Ethereum/klab/bin:$PATH"
export KLAB_EVMS_PATH="$HOME/Ethereum/klab/evm-semantics"

# OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig" 

# Node
export NODE_PATH=`npm root --quiet -g`
export PATH="$NODE_PATH:$PATH"

# Nix
if [ -e /Users/paulrberg/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/paulrberg/.nix-profile/etc/profile.d/nix.sh; fi

# Python
export PATH="$HOME/.local/bin:$PATH"
export PYENV_VERSION=3.6.0

# Qt
export PATH="$HOME/Qt5.11.2/5.11.2/clang_64/bin:$PATH"
export QT_PATH="$HOME/Qt/5.11.2"

# Ruby
export GEM_HOME="$HOME/.gem"
export PATH="$GEM_HOME/bin:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Globals
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

