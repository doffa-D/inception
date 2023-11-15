FROM debian:bookworm

RUN apt-get update && apt-get install -y wget php-fpm php-mysqli php-odbc php-pgsql php-sqlite3 mariadb-client \
    && sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:8080|g" /etc/php/8.2/fpm/pool.d/www.conf

COPY ./conf/conf.sh /conf.sh
RUN chmod +x /conf.sh

ENTRYPOINT ["/conf.sh"]

CMD [ "php-fpm8.2", "-F" ]