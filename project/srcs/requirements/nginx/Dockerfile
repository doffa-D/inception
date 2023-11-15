FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx \
    && apt-get install -y nginx openssl \
    && rm -rf /etc/nginx/sites-enabled/default \
    && rm -rf /etc/nginx/sites-available/default

# `openssl req` command generates a self-signed certificate and key pair for testing and development purposes. It allows for encryption without a passphrase,
# -nodes: This option tells OpenSSL not to encrypt the private key. Without this option, OpenSSL will prompt you for a password to encrypt the private key.
# -newkey rsa:2048: This option generates a new RSA private key of 2048 bits in size. RSA is a widely used public-key cryptosystem for secure data transmission. This key will be used for the self-signed certificate.
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=MA/ST=Agadir/L=Med/O=1337/OU=1337School/CN=hdagdagu.42.fr" \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt


COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf



EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]


# nginx: This is the command to start the Nginx web server.
# -g: This option is used to pass a configuration directive to Nginx.
# "daemon off;": This directive is used to run Nginx in the foreground within the Docker 

