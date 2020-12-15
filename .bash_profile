

# useful functions

function title () { echo -e "\033]0;${1:?please specify a title}\007" ; }

function parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function jc () { javac ${1%.*}.java && java ${1%.*} ; }

function gc () { gcc ${1%.*}.c && ./a.out ; }

function gp () { g++ ${1%.*}.cc && ./a.out ; }

# silence bash warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# golang
# export GOROOT=/usr/local/Cellar/go
unset GOROOT
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin

# command prompt
# ref:
# \u 			= username
# \w 			= path
# \e[0/1;30/.../36m 	= start color
# \e[m 			= stop color
# https://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt 

export PS1="[\u] \e[0;32m\w\e[m \e[0;33m(${AWS_PROFILE})\e[m:\e[0;130m\$(parse_git_branch)\e[m \n$ "

# common aliases and links

alias awsp="source _awsp"
alias py='python3'
alias pp='python3 -m pip'
alias tf="terraform"
alias la='ls -aF'
alias ll='ls -alF'
alias gs='git status'
alias gp='git pull'
alias gpush='git push'
alias gcm='git commit -m'
alias samo='cd ~/samo'
alias njit='cd ~/njit/f20'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


complete -C /usr/local/bin/terraform terraform
