#!/data/data/com.termux/files/usr/bin/bash

PROJECT_DIR=./
PROJECT_FILES=( . .. .git src CMakeLists.txt COPYRIGHT README.md build.sh clean.sh docs install.sh )

function clean()
{
for i in $( ls -a $1 )
do
  local flag=0 
  for j in ${PROJECT_FILES[@]}
  do
    if [ "$j" = "$i" ]
    then
      flag=1
      break
    fi
  done
  if [ $flag -eq 0 ]
  then
    echo "清除 --- $1$i"
    rm -rf $1$i
  fi
done
}

clean $PROJECT_DIR
