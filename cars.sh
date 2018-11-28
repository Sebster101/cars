#! /bin/bash
# cars.sh
# Sebastian Ludlow
n=0
x=3
while [ $n -lt $x ]
do
	echo "Commands: 1.Enter a new car 2.List cars 3.Quit"
	echo "Enter command using 1-3"
	read n
	if [ $n -eq 1 ]
	then
		echo "Enter the year: "
		read y
		echo "Enter the make: "
		read ma
		echo "Enter the model: "
		read mo
		echo "You entered: $y:$ma:$mo"
		echo "$y:$ma:$mo" >> my_old_cars.txt
	elif [ $n -eq 2 ]
	then
		cat my_old_cars.txt
	elif [ $n -eq 3 ]
	then
		echo "You have selected to exit"
		echo "Goodbye"
	fi
done		 
