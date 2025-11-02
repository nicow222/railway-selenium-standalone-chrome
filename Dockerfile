# Imagen base con Chrome + WebDriver ya configurados
FROM selenium/standalone-chrome:latest

USER root
WORKDIR /app

# Copiar archivos del proyecto
COPY . /app

# Instalar Python y dependencias
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install -r requirements.txt

# Dar permisos de ejecución al script de arranque
RUN chmod +x /app/app/start.sh

# Puerto estándar del Selenium Grid
EXPOSE 4444

# Ejecutar el script de inicio
CMD ["/app/app/start.sh"]
