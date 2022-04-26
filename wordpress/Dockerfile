FROM	debian:buster

RUN		apt update
RUN		apt -y upgrade
RUN		apt-get -y install php7.3-fpm php-mysql vim wget
RUN		wget https://wordpress.org/latest.tar.gz
RUN		tar -zxvf latest.tar.gz
RUN		mkdir --parents /var/www/html
RUN		mv /wordpress /var/www/html
RUN		rm latest.tar.gz
RUN		chown -R www-data:www-data /var/www/html/wordpress
#RUN		chown -R www-data:www-data /wordpress
EXPOSE	9000
