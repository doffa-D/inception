FROM debian:bookworm

# Updating packages and installing necessary software
RUN apt-get update && apt-get install -y \
    php8.2 \
    php-fpm \
    php-cli \
    php8.2-fpm \
    php-mysql \
    php-mbstring \
    php-xml \
    php-redis \
    wget \
    curl \
    mariadb-client \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /run/php\
    && sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf

# Install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

COPY ./conf/wp-config.sh /

ENTRYPOINT [ "sh", "/wp-config.sh"]

# it starts the PHP FastCGI Process Manager (FPM) in version 8.2 and runs it in the foreground (-F), enabling the container to handle PHP scripts and serve dynamic content.
CMD ["php-fpm8.2", "-F"]




