FROM webdevops/php-apache:latest

# Setup our environment variables
ENV PHP_FILE_UPLOADS On
ENV PHP_ALLOW_URL_FOPEN On
ENV PHP_SHORT_OPEN_TAG On
ENV PHP_MEMORY_LIMIT 512M
ENV PHP_UPLOAD_MAX_FILESIZE 128M
ENV PHP_MAX_EXECUTION_TIME 3600

RUN mkdir  /var/www/html/magento2/
RUN chown -R www-data:www-data /var/www/html/magento2/
RUN chmod -R 755 /var/www/html/magento2/

COPY ./magneto.conf /etc/apache2/sites-available/magento2.conf

RUN a2ensite magento2.conf
RUN a2enmod rewrite
