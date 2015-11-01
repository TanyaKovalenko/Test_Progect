#!/bin/bash
output_string=`./lab1_1 0 < ./input_file_lab1_1`
output_array=($output_string)
priviousItem=${output_array[0]}
for numberOfItemInOutputArray in ${output_array[@]}
do
	if [[ $numberOfItemInOutputArray -lt $priviousItem ]]
	then
		echo "Error: Array is not sorted"
		exit 1
	else
		priviousItem=$numberOfItemInOutputArray
	fi
done
echo "Program works correctly"

output_string=`./lab1_1 1 < ./input_file_lab1_1`
output_array=($output_string)
priviousItem=${output_array[0]}
for numberOfItemInOutputArray in ${output_array[@]}
do
	if [[ $numberOfItemInOutputArray -gt $priviousItem ]]
	then
		echo "Error: Array is not sorted"
		exit 1
	else
		priviousItem=$numberOfItemInOutputArray
	fi
done
echo "Program works correctly"
