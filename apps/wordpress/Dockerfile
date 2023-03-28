FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install wget nginx  php-bcmath php-curl php-fpm -y && \
    apt install php-imagick php-intl php-json -y && \
    apt install php-mbstring php-mysql php-xml php-zip -y
RUN cd /tmp && \
    wget https://wordpress.org/latest.tar.gz && \
    tar -xzvf latest.tar.gz && \
    mv wordpress/ /var/www/html
COPY configs/wordpress /var/www/html/wordpress/wp-config.php
COPY configs/app.nginx /etc/nginx/sites-available/default
COPY configs/script.sh /script.sh
COPY configs/info.php /var/www/html/
RUN chmod +x /script.sh
CMD [ "/script.sh" ]
