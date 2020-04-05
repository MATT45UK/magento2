#Composer
docker exec -it magento2_magneto_1 /bin/bash -c "cd /var/www/html/magento2/ && composer install"

# Options https://devdocs.magento.com/guides/v2.3/install-gde/install/cli/install-cli-install.html
docker exec -it magento2_magneto_1 /bin/bash -c  "cd /var/www/html/magento2/ && ./bin/magento setup:install \
--base-url=http://localhost/magento2/ \
--db-host="172.18.0.200" --db-name=magento --db-user=root --db-password=example \
--admin-firstname=Magento --admin-lastname=User --admin-email=user@example.com \
--admin-user=admin --admin-password=admin123 --language=en_US \
--currency=USD --timezone=America/Chicago --use-rewrites=1"