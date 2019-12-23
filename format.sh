#!/bin/bash

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
 
 format "$1"
