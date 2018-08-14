#!/data/data/com.termux/files/usr/bin/bash

BUILD_PATH=./build

if [ "$1" = "-h" ] || [ "$1" = "--help" ]
then	
  echo "Usage: $0 [build-dir] (default:${BUILD_PATH})"
  exit 0
fi

if [ $1 ]
then
  BUILD_PATH=$1
fi

if [ ! -d ${BUILD_PATH} ]
then
 echo "build-dir:${BUILD_PATH} is not exist! and create it"
 mkdir -p ${BUILD_PATH} > /dev/null
 if [ ! -d ${BUILD_PATH} ]
 then
   echo "create error!"
   exit 1
 fi
else
 echo "clean up build-dir"
 rm -rf ${BUILD_PATH}/*
fi

cd ${BUILD_PATH}

cmake .. && make
