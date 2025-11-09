#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${RED}Очистка Laravel by @MikhailTheBear${NC}"

read -p "Очистить config? (y/N): " answer

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    php artisan config:clear      # Очистка кэша конфигурации
    php artisan config:cache      # Очистка и пересоздание кэша конфигурации
    echo -e "${GREEN}Готово.${NC}"
else
    echo -e "${RED}Отмена."
fi

read -p "Очистить route? (y/N): " answer

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    php artisan route:clear       # Очистка кэша маршрутов
    php artisan route:cache       # Очистка и пересоздание кэша маршрутов
    echo -e "${GREEN}Готово.${NC}"
else
    echo -e "${RED}Отмена."
fi

read -p "Очистить view? (y/N): " answer

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    php artisan view:clear        # Очистка скомпилированных шаблонов
    php artisan view:cache        # Пересоздание кэша представлений
    echo -e "${GREEN}Готово.${NC}"   
else
    echo -e "${RED}Отмена."
    exit 1
fi

echo -e "${GREEN}-------------------------"
echo -e "${GREEN}Спасибо за использование!"
echo -e "${GREEN}-------------------------"
