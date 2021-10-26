#Imagen con la que se trabaja
FROM php:7.4-apache
#Creacion del directorio
WORKDIR /var/www/html
#Comandos
RUN apt-get upgrade 
RUN apt-get update 
RUN apt-get -y install  git 
RUN git clone https://github.com/drnic/php-helloworld.git
#Mover archivo para poder verlo directamente
RUN mv php-helloworld/index.php /var/www/html

