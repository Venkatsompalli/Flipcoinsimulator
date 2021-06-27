#!/bin/bash -x

Head=1;
Headswin=0;
Tailswin=0;

for ((i=1;i<=100;i++))
do
randomcheck=$((RANDOM%2));

     if [ $randomcheck -eq $Head ]
         then
             Headswin=$(($Headswin+1));
         else
             Tailswin=$(($Tailswin+1));
     fi

done

echo Number of times Heads win:$Headswin

echo Number of times Tails win:$Tailswin
