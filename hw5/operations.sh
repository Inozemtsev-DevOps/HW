#!/bin/bash

source=$1
dest=$2


if [ ! -f "$source" ]; then
    echo "Ошибка: такого файл нет."
    exit 1
fi

cp "$source" "$dest"

echo "Файл успешно скопирован."
