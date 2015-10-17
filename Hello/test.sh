#!/bin/bash

answer=`./hello 3 7 2`
if [[ "$answer" -eq "3" ]]
then
echo "Тест прошёл успешно"
else
exit 1