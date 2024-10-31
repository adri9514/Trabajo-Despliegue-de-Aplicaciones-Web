# Selecciona una imagen base de PHP con FPM (FastCGI Process Manager)
FROM php:8.0-fpm

# Instala dependencias necesarias
RUN apt-get update && apt-get install -y \
    nginx \
    && docker-php-ext-install mysqli pdo pdo_mysql

# Copia archivos de configuración
COPY ./nginx.conf /etc/nginx/nginx.conf

# Exponemos los puertos necesarios para PHP y Nginx
EXPOSE 80
EXPOSE 9000

COPY ./start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
