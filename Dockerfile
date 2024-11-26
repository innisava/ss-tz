# Используем базовый образ, slim-вариант официального Python-образа Docker
FROM python:3.8-slim

# Установаем системные зависимости
RUN set -ex && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    gcc \
    build-essential \
    libssl-dev \
    libpcre3-dev \
    python3-dev \
    postgresql-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Устанавливаем рабочую директорию контейнера
WORKDIR /app

# Копируем и устанавливаем Python-зависимости приложения
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект в контейнер
COPY . /app/

# Открываем порт для uWSGI
EXPOSE 8000

# Запускаем uWSGI
CMD ["uwsgi", "--http", ":8000", "--module", "parrotsite.wsgi:application"]
