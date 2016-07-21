#!/bin/bash

./build/control_loop_lab/control_loop_lab
if [[ $? -ne 0 ]] ; then
    exit 1
fi

./build/maintenance_lab/maintenance_lab
if [[ $? -ne 0 ]] ; then
    exit 1
fi

./build/control_loop_test/control_loop_test
if [[ $? -ne 0 ]] ; then
    exit 1
fi
