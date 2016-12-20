#!/bin/sh 
 
factorial() 
{ 
  if [ "$1" -gt "1" ]; then 
    i=$(($1 - 1))
   #echo before 1 - $1 i- $i 
    factorial $i
    return $(($1 * $?))  
  else 
    return 1 
  fi 
} 
 
 
while : 
do 
  echo "Enter a number (or anything else to exit):" 
  read x 
  #if [ $x =~ ^[0-9]+$ ]; then
      factorial $x
      echo The factorial of $x is $?
  #else
      echo bye
      break
#fi 
done 
