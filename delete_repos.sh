#!/bin/bash
declare -a arr=(
# gh repo list 
# pub list of repo name strings
)


## now loop through the above array
for i in "${arr[@]}"
do
   echo deleteing "$i"
   gh repo delete "$i" --confirm
   sleep 1
done
