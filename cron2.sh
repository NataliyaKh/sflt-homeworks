#!/bin/bash
rsync -a --checksum --delete /home/vboxuser /tmp/backup
if [ "$?" -eq 0 ]; then
    echo "[$(date)] Резервное копирование прошло успешно" >> /var/log/backup.log
else
    echo "[$(date)] Ошибка при резервном копировании" >> /var/log/backup.log
fi
