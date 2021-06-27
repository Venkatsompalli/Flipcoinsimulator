#!/bin/bash -x
Head=1;
maxwins=21;
Headswin=0;
Tailswin=0;


function operation() {

while [[ $Headswin -lt $maxwins && $Tailswin -lt $maxwins ]]
do

randomcheck=$((RANDOM%2));

    case $randomcheck in
                  $Head)
                  Headswin=$(($Headswin+1));
                  ;;
                  *)
                  Tailswin=$(($Tailswin+1));
                  ;;
    esac
done
}

function tie () {

if [ $Headswin -gt $Tailswin ]
then
    echo Heads win
else
    echo Tails win
fi

}

#First starts with operation

operation

if [ $Headswin -gt $Tailswin ]
then
    echo Heads win
elif [ $Tailswin -gt $Headswin ]
then
    echo Tails win
else
    operation
    tie
fi
