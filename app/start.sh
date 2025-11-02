#!/bin/bash
set -e

# Variables de entorno
PORT=${PORT:-4444}

echo "🚀 Iniciando Selenium Standalone Chrome..."
echo "📡 Puerto: $PORT"

# Iniciar Selenium Grid en el puerto especificado
exec java -jar /opt/selenium/selenium-server.jar standalone \
  --port $PORT \
  --host 0.0.0.0 \
  --max-sessions 10 \
  --session-timeout 300
