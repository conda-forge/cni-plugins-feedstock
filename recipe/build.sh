#!/usr/bin/env bash

build_linux()
{
    find -type f -exec sed -i'' "s|/etc/cni/net\.d|$PREFIX/etc/cni/net\.d|g" {} \;
    ./build_linux.sh

    cp -avf bin/* $CNI_PATH
}

case $(uname -s) in
    "Linux")
        build_linux
        ;;
esac
