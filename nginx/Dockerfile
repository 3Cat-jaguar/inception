FROM	debian:buster

RUN		apt update
RUN		apt -y upgrade
RUN		apt-get -y install nginx openssl vim
RUN		openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Lee/CN=localhost" -keyout /etc/ssl/private/localhost.ylee.key -out /etc/ssl/certs/localhost.ylee.crt
RUN		chmod 600 /etc/ssl/private/localhost.ylee.key /etc/ssl/certs/localhost.ylee.crt
EXPOSE	80 443
