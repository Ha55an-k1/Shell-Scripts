#!/bin/bash

arg=$1
load1=( 0oooo o0ooo oo0oo ooo0o oooo0 )
load2=( '|' '/' '-' '\' '|' '/' '-' '\' )
load3=( Loading lOading loAding loaDing loadIng loadiNg loadinG )

 run(){

    num=$1
    load &
    pid=$!
    for i in {1..10}
    do
        sleep $num
    done

    kill $pid
    wait $pid 2> /dev/null

    echo -e " \n -> Could not find a Solution "
 }


 load(){
    while [ 1 ]
    do
    for i in "${load2[@]}"
    do
    
     echo -ne "\r$i"
     sleep 0.1
    
    done
    done
 }


    echo "--------------------------------"
    echo "|Welcome to Windows Help Center|"
    echo "--------------------------------"
    echo "1) Troubleshoot"
    echo "2) Search Online for Solution"
    echo "3) Exit"
    read -p "Choice:" ans
    echo -e "\n"
    if [ $ans -eq 1  ] ; then
            echo "-> Troubleshooting. "
            run 1

    elif [ $ans -eq 2 ] ; then
            echo "-> Searching Online. "
            run 2
            
    elif [ $ans -eq 3 ]; then
            exit 0
    fi
