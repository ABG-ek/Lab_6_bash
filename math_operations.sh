#!/bin/bash

# Функция для сложения
add() {
    echo "Результат сложения: $(($1 + $2))"
}

# Функция для вычитания
subtract() {
    echo "Результат вычитания: $(($1 - $2))"
}

# Функция для умножения
multiply() {
    echo "Результат умножения: $(($1 * $2))"
}

# Функция для деления
divide() {
    if [ "$2" -eq 0 ]; then
        echo "Ошибка: Деление на ноль."
    else
        echo "Результат деления: $(($1 / $2))"
    fi
}

# Запрос у пользователя двух чисел
read -p "Введите первое число: " num1
read -p "Введите второе число: " num2

# Запрос у пользователя операции
echo "Выберите операцию:"
echo "1) Сложение"
echo "2) Вычитание"
echo "3) Умножение"
echo "4) Деление"
read -p "Введите номер операции (1-4): " operation

# Выполнение соответствующей операции
case $operation in
    1) add $num1 $num2 ;;
    2) subtract $num1 $num2 ;;
    3) multiply $num1 $num2 ;;
    4) divide $num1 $num2 ;;
    *) echo "Ошибка: неверный номер операции." ;;
esac
