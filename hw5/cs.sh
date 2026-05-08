#!/bin/bash

echo "Введите имя файла для проверки:"
read filename

if [ -f "$filename" ]; then
    echo "Файл существует."
else
    echo "Файла с таким названием нет."
fi
