#!/bin/bash
echo -e "\n********************Setup env of zhanghao.**********************"

export LC_ALL=C
export LESSCHARSET=utf-8

#alias
alias l='ls -l'
alias ll='ls -al'
alias bin='cd ~/bin'
#alias b='cd ..'

#cmd
alias repopull='repo_new forall -pc git pull'
alias repocheck='repo_new forall -pc git checkout'
alias tarc='tar -zcvf'
alias gitst='git status .'
alias repotelephony='repo status ./frameworks/base/ ./frameworks/opt/telephony/ ./packages/services/Telephony/ ./vendor/qcom/proprietary/ ./external/apache-commons-lang/ '

#qualcomm path
alias qti='croot; cd vendor/qcom/proprietary/commonsys/telephony-fwk/opt/telephony'
alias hook='croot; cd vendor/qcom/proprietary/commonsys/qcrilOemHook'
alias opt='croot; cd frameworks/opt/telephony'
alias qcom='croot; cd vendor/qcom/proprietary'
alias qcril='croot; cd vendor/qcom/proprietary/qcril-hal'
alias ti='croot; cd vendor/qcom/proprietary/commonsys/telephony-interface'
alias dream='croot;cd vendor/dream/telephony'


#main
export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}zhanghao@hytera:\w# '

#fuction
function size()
{
    if [ "$1" = "-a" ]; then
        df -h;
    elif [ "$1" = "-c" ]; then
        du -smh;
    elif [ "$1" = "-d" ] && [ -n "$2" ]; then
        du -h -d $2;
    elif [ "$1" = "-t" ]; then
        du -sm;
    else
        echo -e "size -a    available显示剩余空间"
        echo -e "size -c    current显示当前目录占用空间"
        echo -e "size -d n  depth显示当前目录几层子目录占用空间"
        echo -e "size -t    total获取当前路径下文件数量"
    fi
}

function reinit ()
{
    source ~/.bashrc
}

function version ()
{
    cat /etc/issue;
}

function cpu ()
{
    echo -e "number of cpu is $(cat /proc/cpuinfo | grep "physical id" | uniq | wc -l)";
    echo -e "number of cores per cpu is $(cat /proc/cpuinfo | grep "cpu cores" | uniq)";
    echo -e "number of cores is $(cat /proc/cpuinfo | grep "processor" | wc -l)";
}

function b()
{
    if [ -n "$1" ]; then
        for ((i=1; i<=$1; i++))
        do
            cd ..
        done
    else
        cd ..
    fi
}

function repocheckq()
{
	repo_new forall -pc git checkout $1 --quiet
}

function repopullq()
{
	repo_new forall -pc git pull $1 --quiet
}
