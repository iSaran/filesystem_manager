#!/bin/bash

my_exit_code=0
echo "> Custom CMake build script..."
rm -rf build
mkdir build && cd build
cmake ..
if [ "$?" = "0" ]; then
  make
  if [ "$?" = "0" ]; then
    echo ""
    echo
    ./filesystem_manager
    if [ "$?" = "0" ]; then
      echo ""
    else
      echo "> Filesystem Manager returns with error."
      my_exit_code=1
    fi
  else
    echo "> Build errors!"
    my_exit_code=2
  fi
else
  echo "> Cmake errors!"
  my_exit_code=3
fi
cd ..
echo "Return code: $my_exit_code"
exit $my_exit_code
