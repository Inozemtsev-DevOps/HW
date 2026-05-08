#!/bin/bash


file="$1"

if [ ! -f "$file" ]; then
    echo "Ошибка: файл '$file' не найден."
    exit 1
fi


if ! content=$(cat "$file"); then
    echo "Ошибка: не удалось прочитать файл."
    exit 1
fi

echo "Содержимое файла:"
echo "$content"
