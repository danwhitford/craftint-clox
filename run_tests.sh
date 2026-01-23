#! /bin/bash
set -u

for test in *_test.c; do
    echo "Running ${test%.*}"
    make ${test%.*}
    ./${test%.*}
    echo "Test OK"
done
