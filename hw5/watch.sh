#!/bin/bash

dir="$HOME/watch"

mkdir -p "$dir"

echo "Слежение за каталогом: $dir"

while true
do
    for file in "$dir"/*
    do
        if [ -f "$file" ]
        then
            case "$file" in
                *.back) continue ;;
            esac

            echo "Обнаружен файл: $file"
            echo "Содержимое:"

            cat "$file"

            mv "$file" "$file.back"
        fi
    done

    sleep 2
done
