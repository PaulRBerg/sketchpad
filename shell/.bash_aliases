alias ..="cd ../"
alias blockchain="cd ~/Documents/Blockchain"
alias clion="open -a \"CLion\""
alias desktop="cd ~/Desktop"
alias docs="cd ~/Documents"
alias eth="cd ~/Documents/Blockchain/Ethereum/"
alias gethpath="cd $HOME/go/src/github.com/ethereum/go-ethereum"
alias goland="open -a \"GoLAnd\""
alias intellij="open -a \"IntelliJ Idea\""
alias list="ls -a -1"
alias mnemonic="gshuf -n12 /usr/share/dict/words"
alias now="date +\"%Y-%m-%dT%H:%M:%S%z\""
alias pad="cd ~/Documents/Pad"
alias ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"
alias projects="cd ~/Documents/Projects"
alias pycharm="open -a PyCharm"
alias randpwd="cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c 32; echo"
alias rinkeby="cd ~/Library/Ethereum/rinkeby"
alias size="du -sh"
alias sizesort="find . -type f -print0 | xargs -0 ls -l | sort -k5,5rn"
alias support="cd ~/Library/Application\ Support"
alias vscode="open -a \"Visual Studio Code\""
alias work="cd ~/Documents/Work"

function strlen() {
	echo -n $@ | wc -c
}

# bash
alias openbash="open ~/.bash_profile"
alias srcbash="source ~/.bash_profile"
alias vimbash="vim ~/.bash_profile"
alias vimaliases="vim ~/.bash_aliases"

# convertors
function nobin() {	
    echo "obase=2;$@" | bc
}
function nounbin() {
	echo $((2#$@))
}
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

# cpp
alias gpp="g++ -std=c++11"

# crypto
alias bitd="bitcoind -daemon | tail -f $HOME/Library/Application\ Support/Bitcoin/debug.log"
alias bcli="bitcoin-cli"
alias eosconfig="open -a TextEdit ~/Library/Application\ Support/eosio/nodeos/config/config.ini"
alias eosnode="~/eos/build/programs/nodeos/nodeos --plugin eosio::chain_api_plugin --plugin eosio::history_api_plugin"
alias ethsize="du -hs ~/Library/Ethereum"
alias ethpsize="du -hs ~/Library/Application\ Support/io.parity.keys"
alias rai="sudo docker exec 2c09d603bdc7 /usr/bin/rai_node"
function sha1() {
	echo -n $@ | openssl dgst -sha1
}
function sha256() {
	echo -n $@ | openssl dgst -sha256
}

# curl
alias ..="cd ../"
alias curl_post="curl -H \"Content-Type: application/json\""

# ethereum
alias clefy="clef --networkid 4 --keystore $HOME/Library/Ethereum/rinkeby/keystore --4bytedb $HOME/go/src/github.com/ethereum/go-ethereum/cmd/clef/4byte.json --rules ./rules.js --rpc"
alias ganache="ganache-cli --port 8545 --networkId 7923"
alias gat="geth --datadir $HOME/Library/Ethereum/rinkeby  attach ipc:$HOME/Library/Ethereum/rinkeby/geth.ipc console"
alias gethboozer="geth --datadir $HOME/Documents/Crypto/Ethereum/core/nodes/boozer --networkid 7923 --rpc"
alias gethy="geth --rinkeby --rpc"
alias pat="geth attach ipc:$HOME/Library/Application\ Support/io.parity.ethereum/jsonrpc.ipc"
alias trf="truffle"

# git
alias gaa="git add -A"
alias gcm="git commit -m"
alias gphm="git push heroku master"
alias gpom="git push origin master"
alias gpod="git push origin develop"
alias grao="git remote add origin"
alias gs="git status"
alias tac="gulp transpile && git add -A && git commit -m"

# firebase
alias fdof="firebase deploy --only functions"
alias ffs="firebase functions:shell"

# npm
alias nrd="npm run dev"
alias nrp="npm run private"
alias nc="npm run coverage"
alias nl="npm run lint"
alias ns="npm start"
alias nt="npm test"
alias ntc="npm run test-cov"
alias unpm="npm-check --skip-unused --update-all --save-exact --ignore"

# pentest
alias scanports="nmap --top-ports 1000 -T4 -sC"

# python
alias pip="pip3"
alias python="python3"
