#!/bin/bash

 #Bash Script that greets with appropriate message based on current time

 typeset -i clock=0
 user=`whoami`
 val=`date | cut -c 12-19`
 hour=`echo $val | cut -c 1-2`

 #echo $val
 #echo $hour

 if [[ $hour -ge 20  &&  $hour -le 24  ]]
   then
        echo "Good Night $user"

   elif [[ $hour -ge 12 && $hour -le 17  ]]
   then
        echo " Good Afternoon $user"

   elif [[  $hour -ge 17 && $hour -le 20  ]]
   then
        echo "Good Evening $user"

   elif [[ $hour -gt 0  && $clock -le 12  ]]
   then
        echo "Good Morning $user "
 fi
