#!/bin/bash
set -e

# Variables de entorno
PORT=${PORT:-4444}

echo "🚀 Iniciando Selenium Standalone Chrome..."
echo "📡 Puerto: $PORT"

# Crear directorio /dev/shm si no existe (para memoria compartida)
mkdir -p /dev/shm
chmod 1777 /dev/shm

# Iniciar Selenium Grid con configuraciones optimizadas
exec java \
  -Xmx6g \
  -Xms2g \
  -jar /opt/selenium/selenium-server.jar standalone \
  --port $PORT \
  --host 0.0.0.0 \
  --max-sessions 5 \
  --session-timeout 600 \
  --timeout 300 \
  --no-vnc \
  --log-level INFO
