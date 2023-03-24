FROM ubuntu:latest
RUN apt update && \ 
apt install apache2 ghostscript libapache2-mod-php && \ 
mysql-server php php-bcmath php-curl && \
php-imagick php-intl php-json && \
php-mbstring php-mysql php-xml php-zip && \
mkdir -p /srv/www && \
sudo chown www-data: /srv/www && \
cd /srv/www && \
wget https://wordpress.org/latest.tar.gz && \
tar -xzvf latest.tar.gz && \
sudo chown -R www-data:www-data /srv/www
