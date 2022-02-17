#!/usr/bin/env bash

echo $LD_RUNPATH_SEARCH_PATH

otool -l app

otool -L binary-package

install_name_tool -rpath old new

echo $MY_LIB_PATH

[MacOs] How to solve jvm dynamic library 

# find the dynamic library path
find /Library -name 'libjvm.dylib'

# add runtime path
install_name_tool -add_rpath {jvm-dynamic-library-path} ./cosmovisor

otool -l cosmovisor


