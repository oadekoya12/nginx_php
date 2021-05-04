FROM ubuntu/nginx

RUN apt update &&\
    apt install nginx &&\
    apt install  ca-certificates apt-transport-https software-properties-common -y &&\
    add-apt-repository ppa:ondrej/php -y &&\
    apt update 
RUN apt install -y php8.0  php8.0-fpm  php8.0-bz2 php8.0-common
RUN apt install -y php8.0-curl php8.0-gd php8.0-intl php8.0-mbstring php8.0-opcache php8.0-soap
RUN apt install -y php8.0-xml php8.0-xsl php8.0-zip 
    
WORKDIR /var/www

EXPOSE 80 443