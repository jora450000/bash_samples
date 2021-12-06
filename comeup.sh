#!/bin/bash

echo "Come up with  a number from 1 to 20!"
sleep 2

left_x=0
right_x=20
Y=1


until [ $Y -eq 0 ]
do
        X=$(( ($left_x + $right_x) / 2 ))
        printf  "X=%s ? I'm right? (0 -yes, 1 - too big, 2 - too small: "  "$X"
        read Y
        case $Y in
                2)
                        left_x=$(( ($left_x + $right_x) / 2 ))
                        ;;
                1)
                        right_x=$(( ($left_x +$right_x) / 2 ))
                        ;;
                0)
                        echo "Your digit is $X"; break
                        ;;
        esac
        if [ $(( $right_x  -  $left_x )) -le 1  ] ; then
                echo "You are shuller!!!"
                exit 1
        fi
done

