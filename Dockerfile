# Imagen base con Chrome + WebDriver ya configurados
FROM selenium/standalone-chrome:latest

USER root
WORKDIR /app

# Instalar dependencias necesarias para Chrome
RUN apt-get update && apt-get install -y \
    libxss1 \
    libappindicator1 \
    libindicator7 \
    fonts-liberation \
    xdg-utils \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Copiar solo el script de inicio
COPY app/start.sh /app/start.sh

# Dar permisos de ejecución al script de arranque
RUN chmod +x /app/start.sh

# Puerto estándar del Selenium Grid
EXPOSE 4444

# Ejecutar el script de inicio
CMD ["/app/start.sh"]
