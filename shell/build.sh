#!/bin/bash

if [ ! -d output ]; then
  mkdir output
fi
go build -o  output/cicd cmd/echo/main.go

if [ -f output/cicd ];then
  echo "build successful"
else
  echo "build failed"
fi
