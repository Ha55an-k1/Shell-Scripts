#!/bin/bash

 #Bash Script that greets with appropriate message based on current time

 typeset -i clock=0
 user=`whoami`
 val=`date | cut -c 12-19`
 hour=`echo $val | cut -c 1-2`
 dig1="${hour:0:1}"
 dig2="${hour:1:2}"
 #echo $dig1
 #echo $dig2
 #echo $val
 #echo $hour

 #digit check for morning
 if [ $dig1 -eq "0" ]
 then
 hour=$dig2
 fi

 if [[ $hour -ge 20  &&  $hour -le 24  ]]
   then
        echo "Good Night $user"

   elif [[ $hour -ge 12 && $hour -le 17  ]]
   then
        echo " Good Afternoon $user"

   elif [[  $hour -ge 17 && $hour -le 20  ]]
   then
        echo "Good Evening $user"

   elif [[ $hour -ge 0  && $clock -le 12  ]]
   then
        echo "Good Morning $user "
 fi
