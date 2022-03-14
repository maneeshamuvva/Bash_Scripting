#!/bin/bash
read -p "Type Your Birthday in format DD/MM/YYY: " DAATE
echo "Enter Your Birthday: $DAATE"
id=$(echo $DAATE | grep -o [0-9])
tot=0
for i in ${id[@]}
do
        let tot+=$i
done
echo "Total: $tot"
