#!/bin/bash

# Проверяем, переданы ли два аргумента (путь к исходной директории и путь к директории назначения)
if [ "$#" -ne 2 ]; then
    echo "Ошибка: требуется два аргумента - путь к исходной директории и путь к директории назначения."
    echo "Использование: ./backup.sh <src_directory> <dest_directory>"
    exit 1
fi

# Считываем аргументы
src_directory="$1"
dest_directory="$2"

# Проверяем, существует ли исходная директория
if [ ! -d "$src_directory" ]; then
    echo "Ошибка: исходная директория '$src_directory' не найдена."
    exit 1
fi

# Создаем директорию назначения, если она не существует
mkdir -p "$dest_directory"

# Определяем текущую дату в формате YYYY-MM-DD
current_date=$(date +"%Y-%m-%d")

# Копируем файлы и добавляем текущую дату к имени каждого файла
for file in "$src_directory"/*; do
    if [ -f "$file" ]; then  # Проверяем, что это файл
        filename=$(basename "$file")          # Получаем имя файла
        cp "$file" "$dest_directory/${filename%.*}_$current_date.${filename##*.}"  # Копируем файл с новой датой в имени
    fi
done

echo "Копирование файлов завершено. Файлы сохранены в '$dest_directory'"
