alias ..="cd ../"
alias aztec="cd ~/Documents/Work/AZTEC"
alias blockchain="cd ~/Documents/Blockchain"
alias clion="open -a \"CLion\""
alias desktop="cd ~/Desktop"
alias docs="cd ~/Documents"
alias goland="open -a \"GoLand\""
alias intellij="open -a \"IntelliJ Idea\""
alias list="tree -L 1 ."
alias mnemonic="gshuf -n12 /usr/share/dict/words"
alias now="date +\"%Y-%m-%dT%H:%M:%S%z\""
alias paulrberg="cd ~/Documents/Projects/PaulRBerg"
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

# aztec
alias aztecu="npm install aztec.js@latest @aztec/contract-addresses@latest @aztec/contract-artifacts@latest @aztec/dev-utils@latest --global"

# bash
alias openbash="open ~/.bash_profile"
alias srcbash="source ~/.bash_profile"
alias vimbash="vim ~/.bash_profile"
alias vimaliases="vim ~/.bash_aliases"

# convertors
function numbin() {	
    echo "obase=2;$@" | bc
}
function numunbin() {
	echo $((2#$@))
}
function numhex() {
	printf "%x\n" $@ | tr "[a-z]" "[A-Z]"
}
function numunhex() {
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
alias curl-post="curl -H \"Content-Type: application/json\""

# ethereum
alias clefy="clef --networkid 4 --keystore $HOME/Library/Ethereum/rinkeby/keystore --4bytedb $HOME/go/src/github.com/ethereum/go-ethereum/cmd/clef/4byte.json --rules ./rules.js --rpc"
alias clefyrun="go run *.go --networkid 4 --keystore $HOME/Library/Ethereum/rinkeby/keystore --4bytedb $HOME/go/src/github.com/ethereum/go-ethereum/cmd/clef/4byte.json --rpc"
alias devnet="docker run -it -d --rm -p 8545:8501 -p 8546:8546 0xorg/devnet:latest /bin/bash"
alias eth="cd ~/Documents/Blockchain/Ethereum/"
alias ganache="ganache-cli --port 8545 --networkId 1234"
alias ganache-app="open -a \"Ganache\""
alias gattach="geth --datadir $HOME/Library/Ethereum/rinkeby attach ipc:$HOME/Library/Ethereum/rinkeby/geth.ipc console"
alias gethboozer="geth --datadir $HOME/Documents/Crypto/Ethereum/core/nodes/boozer --networkid 7923 --rpc"
alias gethpath="cd $HOME/go/src/github.com/ethereum/go-ethereum"
alias goerli="geth --datadir $HOME/Library/Ethereum/goerli --rpc"
alias pat="geth attach ipc:$HOME/Library/Application\ Support/io.parity.ethereum/jsonrpc.ipc"
alias rinkeby="geth --rinkeby --rpc"
alias trf="truffle"
function stopDevnet() {
    docker stop $(docker ps -aq --filter ancestor=0xorg/devnet:latest)
}

# git
alias gaa="git add -A"
alias gcan="git commit --amend --no-edit"
alias gcm="git commit -m"
alias gphm="git push heroku master"
alias gpom="git push origin master"
alias gpod="git push origin develop"
alias gpfod="git push --force-with-lease origin develop"
alias grao="git remote add origin"
alias gs="git status"
alias tac="gulp transpile && git add -A && git commit -m"

# firebase
alias fdof="firebase deploy --only functions"
alias ffs="firebase functions:shell"

# npm
alias npmlist="npm ls -g --depth 0"
alias npmpub="npm run build && npm publish" # run babel first
alias nrc="npm run coverage"
alias nrd="npm run dev"
alias nrl="npm run lint"
alias nrt="npm run test"
alias update-modules="npm-check --skip-unused --update-all --save-exact --ignore"

# pentest
alias scanports="nmap --top-ports 1000 -T4 -sC"

# python
alias pip="pip3"
alias python="python3"
