#bubye
COMMAND="cd /var/www/html/magento2/; ./bin/magento setup:uninstall"
docker exec -it magento2_magneto_1 /bin/bash -c "${COMMAND}"