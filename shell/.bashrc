export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Python
export PATH="/Users/username/.pyenv:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)";
fi
if which pyenv-virtualenv-init > /dev/null; then
	eval "$(pyenv virtualenv-init -)";
fi

# added by travis gem
[ -f /Users/paulrberg/.travis/travis.sh ] && source /Users/paulrberg/.travis/travis.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

