#!/bin/bash

# Define a variable named "name"
name="Amaan Shaikh"

# Print the value of the variable
echo "My name is $name"

# Input from user
read -t 5 -p "Enter Number One :- " num1
echo
read -t 5 -p "Enter Number Two :- " num2
echo

# Validate if input is numeric
if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
    echo "Please enter valid integer numbers."
    exit 1
fi

# Use an if statement to check if the first number is greater than the second number
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater than $num2"
else
    echo "$num2 is greater than $num1"
fi

# Use a for loop to print the numbers from 1 to the value of the first number
for ((i = 1; i <= num1; i++)); do
    echo $i
done

# Print a message indicating that the script is finished
echo "Script finished."
