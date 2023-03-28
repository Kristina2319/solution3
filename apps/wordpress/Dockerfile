FROM ubuntu:latest
RUN apt update && \ 
apt install php-bcmath php-curl php-fpm && \
php-imagick php-intl php-json && \
php-mbstring php-mysql php-xml php-zip && \
mkdir -p /tmp/latest.tar.gz && \
cd /tmp/latest.tar.gz  && \
wget https://wordpress.org/latest.tar.gz && \
tar -xzvf latest.tar.gz && \
mv latest.tar.gz /var/www/html && \
cp configs/wordpress /var/www/html/wordpress
COPY config/app.nginx /etc/nginx/sites-available/default
CMD ['script.sh']
