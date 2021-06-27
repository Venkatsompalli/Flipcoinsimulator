#!/bin/bash -x

Head=1;
randomcheck=$((RANDOM%2));

if [ $randomcheck -eq $Head ]
then
    echo Heads win
else
    echo Tails win
fi
