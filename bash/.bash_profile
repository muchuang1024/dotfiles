stty -ixon
ssh-add ~/.ssh/github
ssh-add ~/.ssh/id_rsa

export PATH=$PATH:/usr/local/bin:/Users/caijinlin/Library/Python/2.7/bin/
export PATH="/usr/local/opt/redis@4.0/bin:$PATH"
export PATH="/usr/local/software/apache-ant-1.10.7/bin:$PATH"

# export
export GOROOT=/usr/local/Cellar/go/1.16.4/libexec
export GOPATH=/Users/caijinlin/Workspace/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GO111MODULE=on

# soft alias
alias ll="ls -l"
alias subl='open -a "Sublime Text"'

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-12.0.2.jdk/Contents/Home

# 重启一下终端光标移动速度会快很多 
defaults write NSGlobalDomain KeyRepeat -int 1 
