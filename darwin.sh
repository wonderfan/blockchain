#!/usr/bin/env bash

echo $LD_RUNPATH_SEARCH_PATH

otool -l app

otool -L binary-package

install_name_tool -rpath old new
