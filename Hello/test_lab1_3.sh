#!/bin/bash
input_string=`< ./input_file_lab1_3`
input_array=($input_string)
output_string=`./lab1_3 < ./input_file_lab1_3`
output_array=($output_string)
declare -a comparison_array
length_of_array=${#input_array[@]}
let "number_of_last_item = length_of_array - 1"
unset input_array[number_of_last_item]
let "number_of_last_item = number_of_last_item - 1"
last_item=${input_array[$number_of_last_item]}
index_of_array=0
for number_of_item_in_input_array in ${input_array[@]}
do	
	if [[ $last_item -eq 1 ]]
	then		
		item_in_input_array=$number_of_item_in_input_array
		let "remainder_of_the_division = item_in_input_array % 2"
		if [[ $remainder_of_the_division -eq 0 ]]
		then
			unset input_array[index_of_array]
		fi
	else 
		if [[ $last_item -eq 2 ]]
		then
			item_in_input_array=$number_of_item_in_input_array
			comparison_array[index_of_array]=$item_in_input_array
			if [[ item_in_input_array -eq 3 ]]
			then
				let "index_of_array = index_of_array + 1"
				comparison_array[index_of_array]=1
				let "index_of_array = index_of_array + 1"
				comparison_array[index_of_array]=1
				let "index_of_array = index_of_array + 1"
				comparison_array[index_of_array]=1
			fi
		fi
	fi
	let "index_of_array = index_of_array + 1"
done
if [[ $last_item -eq 1 ]]
then
	comparison_string=${input_array[@]}
else
	if [[ $last_item -eq 2 ]]
	then
		comparison_string=${comparison_array[@]}	
	fi
fi
if [[ $last_item -eq 1 ]] || [[ $last_item -eq 2 ]]
then
	if [[ "$comparison_string" = "$output_string" ]]
	then
		echo "Program works correclty"
	else
		echo "Error."
		exit 1
	fi
else
	echo "Input array has invalid format"
fi

