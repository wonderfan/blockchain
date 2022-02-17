#!/usr/bin/env bash

echo $LD_RUNPATH_SEARCH_PATH

otool -l app

otool -L binary-package

install_name_tool -rpath old new

echo $MY_LIB_PATH

sudo find / -name 'libjvm.dylib'

install_name_tool -add_rpath $libpath cosmovisor

otool -l cosmovisor


