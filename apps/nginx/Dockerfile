FROM ubuntu:latest
RUN apt update
RUN apt install nginx -y
COPY configs/nginx /etc/nginx/sites-available/default
ENTRYPOINT ["nginx","-g","daemon off;"]
EXPOSE 80
