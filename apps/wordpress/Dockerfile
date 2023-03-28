FROM ubuntu:latest
RUN apt update
RUN apt install nginx wget php-bcmath php-curl php-fpm -y && \
    apt install php-imagick php-intl php-json -y
    apt install php-mbstring php-mysql php-xml php-zip -y
RUN cd /tmp/ && \
    wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mv wordpress/ /var/www/html
COPY configs/wordpress /var/www/html/wordpress/wp-config.php
COPY configs/app.nginx /etc/nginx/sites-available/default
COPY configs/script.sh /script.sh
RUN chmox +x script.sh
CMD ['script.sh']
