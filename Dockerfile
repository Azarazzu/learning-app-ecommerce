FROM php:8.0-apache
WORKDIR /var/www/html

COPY index.php ./
RUN docker-php-ext-install mysqli
COPY . /var/www/html/
EXPOSE 80