# Path to your oh-my-zsh installation.
export ZSH="/Users/pragadeesh.sureshbabu/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    aws
    docker
    docker-compose
    kubectl
    terraform
    jira
    python
    zsh-syntax-highlighting
    zsh-autosuggestions
    kubectl
    )
source $ZSH/oh-my-zsh.sh
ZSH_THEME="avit"

alias dev="aws-okta exec takt-dev -- /bin/zsh"
alias e2e="aws-okta exec takt-e2e -- /bin/zsh"
alias e2e2="aws-okta exec takt-e2e2 -- /bin/zsh"
alias e2e3="aws-okta exec takt-e2e3 -- /bin/zsh"
alias e2e4="aws-okta exec takt-e2e4 -- /bin/zsh"
alias qa="aws-okta exec takt-qa -- /bin/zsh"
alias staging="aws-okta exec sbux-staging -- /bin/zsh"
alias prod="aws-okta exec sbux-prod -- /bin/zsh"

ZSH_DISABLE_COMPFIX=true
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/pragadeesh.sureshbabu/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/pragadeesh.sureshbabu/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/pragadeesh.sureshbabu/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/pragadeesh.sureshbabu/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
alias python3="/usr/bin/python3"