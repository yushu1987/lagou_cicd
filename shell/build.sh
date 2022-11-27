#!/bin/bash
export GOROOT=/usr/local/opt/go/libexec
if [ ! -d output ]; then
  mkdir output
fi
rm -rf output/cicd
go build -o  output/cicd cmd/echo/main.go
#echo "build bin file"
if [ -f output/cicd ];then
  echo "build successful"
  exit 0
else
  echo "build failed"
  exit -1
fi
