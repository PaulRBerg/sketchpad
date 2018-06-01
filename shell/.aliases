#!/usr/bin/env bash

alias ..="cd ../"
alias intellij="open -a \"IntelliJ Idea\""
alias mnemonic="gshuf -n12 /usr/share/dict/words"
alias ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"
alias size="du -sh"
alias support="cd ~/Library/Application\ Support"
function strlen() {
	echo -n $@ | wc -c
}

# crypto
alias bcli="bitcoin-cli"
alias ethsize="du -hs ~/Library/Ethereum"
alias ethpsize="du -hs ~/Library/Application\ Support/io.parity.keys"
alias rai="sudo docker exec 2c09d603bdc7 /usr/bin/rai_node"
function sha256() {
	echo -n $@ | openssl dgst -sha256
}

# git
alias gaa="git add -A"
alias gcm="git commit -m"
alias gpom="git push origin master"
alias gpod="git push origin dev"
alias gs="git status"
alias tac="gulp transpile && git add -A && git commit -m"

# hex
function nohex() {
	printf "%x\n" $@ | tr "[a-z]" "[A-Z]"
}
function nounhex() {
	echo $(($@))
}
function strhex() {
	xxd -p -u <<< $@ | tr "[a-z]" "[A-Z]"
}
function strunhex() {
	echo $@ | xxd -r -p
}

# npm
alias nrd="npm run dev"
alias nrp="npm run private"
alias nc="npm run coverage"
alias nl="npm run lint"
alias ns="npm start"
alias nt="npm test"
alias ntc="npm run test-cov"

# python
alias pip="pip3"
alias python="python3"
