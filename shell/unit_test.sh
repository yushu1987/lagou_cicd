#!/bin/bash
export GOROOT=/usr/local/opt/go/libexec
echo "run unit test"
cd test
go test .
