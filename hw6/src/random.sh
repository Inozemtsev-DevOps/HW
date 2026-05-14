#!/bin/bash
#

echo "Привет, это игра угадай число от 1 до 100"
echo " "

rand=$(( RANDOM % 100 + 1 ))

count=0

while [[ $count -lt 5 ]]
do

	read -p "Ваше число: " num

	if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        	echo "Это не число. Пожалуйста, введите число"
        	continue
    	fi

	if [[ $num -lt 1 || $num -gt 100 ]]; then
		echo "Введите число от 1 до 100"
		continue
	fi


	if [[ $num -lt $rand ]]; then
		echo "Очень низко"
	elif [[ $num -gt $rand ]]; then
		echo "Очень высоко"
	else
		echo "Поздравляю! Вы угaдали правильное число"
		exit 0
	fi

	((count++))

	echo "Осталось попыток: $((5-count))"
	echo

done

echo "Извините, у вас закончились попытки."
echo "Правильное число было: $rand"
