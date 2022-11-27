#!/bin/bash

echo "deploy server"
if [ -f "output/cicd" ];then
  echo "upload output/cicd"
else
  echo "not found bin"
fi
