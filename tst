#!/bin/bash

if [ $# != 1 ] || [[ $file == *.c ]]
then
    echo "Usage:"
    echo "tst -a, tst --all         : testing all your files"
    echo "tst your_file_to_test.c   : only test this file"
    exit 0
fi

clear
if [ $1 == "-a" ] || [ $1 == "--all" ]
then
    gcc *.c tests/test_*.c -lcriterion --coverage -o unit_tests
else
    gcc *.c tests/test_$1 -lcriterion --coverage -o unit_tests
fi

if [ -f unit_tests ]
then
    ./unit_tests
    gcovr --exclude tests/
    gcovr --exclude tests/ --branches
    rm unit_tests *.gcda *.gcno
fi
