FROM ubuntu:jammy-20230308
RUN apt update
RUN apt install nginx -y
COPY configs/nginx /etc/nginx/sites-available/default
ENTRYPOINT ["nginx","-g","daemon off;"]
EXPOSE 80
