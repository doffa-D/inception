FROM debian:bookworm

RUN apt-get update && apt-get install -y redis-server php-redis && \
    sed -i 's|bind 127.0.0.1|bind 0.0.0.0|g' /etc/redis/redis.conf

EXPOSE 6379

#"redis-server" is a command that starts the Redis server
#"--protected-mode no" which is a security feature that prevents Redis from accepting external connections by default
CMD ["redis-server","--protected-mode no"]
