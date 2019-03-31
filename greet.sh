#!/bin/bash

 #Bash Script that greets with appropriate message based on current time
 #________________________________
 #formatting function for Greeting
 format ()
 {
   arg=$1
   typeset -i len=${#arg}
   typeset -i count=$len
   typeset -i run=0

      echo -n " -" 
   while [[  $count -ge 0  ]]
   do
      echo -n "-"
      count=$count-1
      if [[  $count -eq 0  ]]; then  
      count=$len
      run=$run+1
      if [[  run -eq 2  ]];then
         break
      fi
      echo -n "-" 
      echo -ne "\n |"; echo -n $arg; echo -ne "| \n"
      echo -n " -"
      fi
   done
   echo -n "-"
   echo -e "\n"
 }
 
 
 
 typeset -i clock=0
 user=`whoami`
 val=`date | cut -c 12-19`
 hour=`echo $val | cut -c 1-2`
 dig1="${hour:0:1}"
 dig2="${hour:1:2}" 
 
 #digit check for morning
 if [ $dig1 -eq "0" ]
 then
 hour=$dig2
 fi  

 if [[ $hour -ge 20  &&  $hour -le 24  ]]
   then 
	format "GoodNight $user"

   elif [[ $hour -ge 12 && $hour -le 17  ]]
   then
	format "GoodAfternoon $user"

   elif [[  $hour -ge 17 && $hour -le 20  ]]
   then
	format "GoodEvening $user" 

   elif [[ $hour -ge 0  && $clock -le 12  ]] 
   then
	format "GoodMorning $user"
 fi
