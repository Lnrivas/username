#! /bin/bash
# username.sh
# Luis Rivas
echo "Enter a username: "
echo "Use lower case characters, digits, and underscores"
echo "It must start with a lower case charater" 
echo "It must contain at least 3 but not more than 12 characters"

read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - a lowercase letter followed by 2-11 digits, lowercase letters, or underscores!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
