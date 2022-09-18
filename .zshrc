export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(
	git
    vi-mode
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#export ALL_PROXY=socks5://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy
# wsl2
#host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
#export ALL_PROXY="http://$host_ip:7890"

export GOPATH=/Users/issak/code/go
export GOBIN=$GOPATH/bin

export PATH=$PATH:$GOPATH:$GOBIN

export BAT_THEME=Coldark-Dark
eval "$(zoxide init zsh)"

alias vi='nvim'
alias v='neovide --notabs --frame=buttonless'
