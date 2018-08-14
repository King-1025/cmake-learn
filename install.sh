#!/data/data/com.termux/files/usr/bin/bash

BUILD_PATH=./.build

./build.sh ${BUILD_PATH}

cd ${BUILD_PATH}

make install
