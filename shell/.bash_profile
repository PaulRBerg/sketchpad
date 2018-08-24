if [ -f ~/.bashrc ]; then
   	source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi


# EOS
export EOSIO_SOURCE="$HOME/eos"
export EOSPATH="$HOME/eos"
export PATH="/usr/local/opt/gettext/bin:$PATH"

# Fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# Gnubin
PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

# Go
export GOBIN="$HOME/go/bin"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# LLVM
export LLVM_DIR="/usr/local/Cellar/llvm@4/4.0.1/lib/cmake"

# Java
export JAVA_HOME=$(/usr/libexec/java_home)
export CATALINA_HOME="/usr/local/Cellar/tomcat/8.5.24/libexec"

# OpenSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig" 

# Python
export PATH="$HOME/.local/bin:$PATH"
export PYENV_VERSION=3.6.0

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


