#!/bin/bash


# Считываем имя файла из аргумента
filename="$1"

# Проверяем, существует ли файл
if [ ! -f "$filename" ]; then
    echo "Ошибка: файл '$filename' не найден."
    exit 1
fi

# Читаем файл и выводим содержимое построчно
while IFS= read -r line; do
    echo "$line"
done < "$filename"
