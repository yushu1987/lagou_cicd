#!/bin/bash
#export GOROOT=/usr/local/opt/go/libexec
if [ ! -d output ]; then
  mkdir output
fi
go build -o  output/cicd cmd/echo/main.go
#echo "build bin file"
if [ -f output/cicd ];then
  echo "build successful"
else
  echo "build failed"
fi
