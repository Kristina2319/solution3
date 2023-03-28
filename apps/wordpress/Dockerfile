FROM ubuntu:latest
RUN apt update
RUN apt install php-bcmath php-curl php-fpm
RUN apt install php-imagick php-intl php-json
RUN apt install php-mbstring php-mysql php-xml php-zip
RUN mkdir -p /tmp/latest.tar.gz
RUN cd /tmp/latest.tar.gz
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mv latest.tar.gz /var/www/html
COPY configs/wordpress /var/www/html/wordpress
COPY configs/app.nginx /etc/nginx/sites-available/default
CMD ['script.sh']
