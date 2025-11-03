# Imagen base con Chrome + WebDriver ya configurados
FROM selenium/standalone-chrome:latest

WORKDIR /app

# Copiar script de inicio
COPY app/start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Puerto estándar del Selenium Grid
EXPOSE 4444

# Ejecutar el script de inicio
CMD ["/app/start.sh"]
