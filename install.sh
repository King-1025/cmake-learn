#!/bin/bash

BUILD_PATH=./.build

./build.sh ${BUILD_PATH} $1

cd ${BUILD_PATH}

make install

cd ../

echo '#!/data/data/com.termux/files/usr/bin/bash' > uninstall.sh
echo "" >> ${BUILD_PATH}/install_manifest.txt

while read line
do
    echo "rm -rfv $line " >> uninstall.sh
done < ${BUILD_PATH}/install_manifest.txt

chmod +x uninstall.sh

rm -rf ${BUILD_PATH}
