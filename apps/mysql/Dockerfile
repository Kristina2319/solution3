FROM ubuntu:latest
RUN apt update && \
apt install mysql-server && \
apt install python3-pymysql && \
mkdir mysqld.cnf && \
cp /etc/mysql/mysql.conf.d/mysqld.cnf && \
mysql -u root -p && \
CREATE DATABASE WORDPRESS && \
CREATE USER 'WORDPRESS'@'localhost' IDENTIFIED BY 'password'
