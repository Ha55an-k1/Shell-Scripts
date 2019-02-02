#!/bin/bash

#Bash Script that greets with appropriate message based on current time

 typeset -i clock=0
 user=`whoami`
 val=`date | cut -c 12-19`
 clock=`echo $val | cut -d":" -f1`

 #echo $val
 #echo $clock

 if [[ $clock -gt 20  || $clock -le 02 ]]
   then
        echo "Good Night $user"

   elif [[ $clock -gt 12 && $clock -le 17  ]]
   then
        echo " Good Afternoon $user"

   elif [[      $clock -ge 17 && $clock -le 20  ]]
   then
        echo "Good Evening $user"

   elif [[ $clock -gt 02  && $clock -le 12  ]]
   then
        echo "Good Morning $user "
 fi
