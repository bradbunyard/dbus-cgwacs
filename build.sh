#!/bin/bash

ROOT=$PWD

qtchoose -l

export QT_SELECT=4

mkdir -p build/dbus-cgwacs
cd build/dbus-cgwacs
qmake CXX=$CXX ../../software/dbus-cgwacs.pro && make
if [[ $? -ne 0 ]] ; then
    exit 1
fi
