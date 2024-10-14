#!/bin/bash
#下载Android源码

TOP=/mnt/d/code/google/Android15/
BRANCH=android15-release
URL=https://android.googlesource.com/platform/

function create_dir()
{
    local dir=$TOP$1

    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
        echo  "目录 $dir 已创建。"
    else
        echo "目录 $dir 已存在。"
    fi

    cd $dir
}

function clone()
{
    local dir=$TOP$1
    local url=$URL$1

    if [ ! -d "$dir" ]; then
        sudo git clone -b $BRANCH --single-branch $URL$1
        echo -e "仓库 $1 已创建。"
    else
        cd $dir
        sudo git pull
        echo -e "仓库 $1 已更新。"
    fi
}

create_dir external
clone external/iptables

create_dir frameworks
clone frameworks/base

create_dir frameworks/opt
clone frameworks/opt/telephony

create_dir frameworks/opt/net
clone frameworks/opt/net/ims

create_dir hardware
clone hardware/ril

create_dir hardware
clone hardware/interfaces

create_dir packages/modules
clone packages/modules/Connectivity

create_dir packages/services
clone packages/services/Telephony

create_dir packages/providers
clone packages/providers/TelephonyProvider

create_dir system
clone system/core

create_dir system
clone system/netd
