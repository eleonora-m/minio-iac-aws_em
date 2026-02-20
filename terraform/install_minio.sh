#!/bin/bash
# 1. Обновляем систему
sudo apt-get update -y

# 2. Установка Docker
sudo apt-get install -y docker.io
sudo systemctl enable --now docker

# 3. Запуск MinIO через Docker
# Создаем папку для данных
sudo mkdir -p /mnt/data

# Запускаем контейнер (логин: minioadmin / пароль: minioadmin)
# Добавлена политика перезагрузки --restart always (для Issue #25)
sudo docker run -d \
  --name minio \
  --restart always \
  -p 9000:9000 \
  -p 9001:9001 \
  -v /mnt/data:/data \
  -e "MINIO_ROOT_USER=minioadmin" \
  -e "MINIO_ROOT_PASSWORD=minioadmin" \
  quay.io/minio/minio server /data --console-address ":9001"

# 4. Установка MinIO Client (mc) (Issue #22)
# Сохраняем в системную папку, чтобы команда была доступна везде
sudo curl https://dl.min.io/client/mc/release/linux-amd64/mc \
  -o /usr/local/bin/mc
sudo chmod +x /usr/local/bin/mc