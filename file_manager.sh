#!/bin/bash

# Указываем имя директории
DIRECTORY="directory_lab_6"

# Создаем директорию
mkdir $DIRECTORY

# Заходим в созданную директорию
cd $DIRECTORY

# Создаем несколько файлов
touch file1.txt file2.txt file3.txt

# Выводим список файлов для проверки
echo "Созданные файлы:"
ls

# Удаляем созданные файлы
rm file1.txt file2.txt file3.txt

# Выходим из директории
cd ..

# Удаляем директорию
rmdir $DIRECTORY

# Выводим сообщение о завершении
echo "Все файлы и директория удалены"

