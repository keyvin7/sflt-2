#!/bin/bash

# Определяем пути
SOURCE="/home/chupin"
DESTINATION="/tmp/backup"
LOGFILE="/var/log/backup.log"
DATE=$(date +"%Y-%m-%d %H:%M")

# Запускаем rsync
if rsync -avh --delete --exclude='.*' --checksum "$SOURCE/" "$DESTINATION"; then
    echo "$DATE: Резервное копирование успешно выполнено." >> "$LOGFILE"
else
    echo "$DATE: Ошибка при резервном копировании." >> "$LOGFILE"
fi
