#!/bin/bash
export GOROOT=/usr/local/opt/go/libexec
#export GOROOT=/usr/local/Cellar/go/1.17.2
export GO111MODULE=on
export GOPATH=/Users/wangjian/Code/GoProject
echo "run unit test"
cd test
/usr/local/bin/go test .
