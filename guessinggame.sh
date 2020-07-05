#!/usr/bin/env bash
# File: math.sh
n=$(pwd | ls | wc -l)
response=-1
#FUNCTION TO CALCULATE GUESS
function calculate {
if [[ $1 -gt $2 ]]
then
echo "Too high"
elif [[ $1 -lt $2 ]]
then
echo "Too low"
fi
}
#LOOP
while [[ $response -ne $n ]]
do
echo "Enter number of files in current directory:"
read response
calculate $response $n
done
if [[ $response -eq $n ]]
then
echo "Congratulations!!! guessed right "
fi


