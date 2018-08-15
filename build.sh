#!/bin/bash

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
 echo "build-dir:${BUILD_PATH} is not exist and create it!"
 mkdir -p ${BUILD_PATH} > /dev/null
 if [ ! -d ${BUILD_PATH} ]
 then
   echo "create error!"
   exit 1
 fi
else
  echo "build-dir:${BUILD_PATH} is ok!"
# echo "clean up build-dir"
# rm -rf ${BUILD_PATH}/*
fi

cd ${BUILD_PATH}

if [ $2 ]
then
 cmake -DCMAKE_INSTALL_PREFIX=$2 ..
else
 cmake ..
fi
make
