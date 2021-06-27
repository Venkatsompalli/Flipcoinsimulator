#!/bin/bash -x

Head=1;
maxwins=21;
Headswin=0;
Tailswin=0;

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

if [ $Headswin -gt $Tailswin ]
then
    Heads=$(($Headswin-$Tailswin));
    echo Heads Win
    echo Heads win by $Heads more
elif [ Tailswin -gt $Headswin ]
then
    Tails=$(($Tailswin-$Headswin));
    echo Tails Win
    echo Tails win by $Tails more
else
    echo Tie
fi
