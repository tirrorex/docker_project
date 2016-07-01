FROM ubuntu:12.04

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN apt-get update && apt-get install -y apache2 php5 libapache2-mod-php5 php5-mysql php5-cli && apt-get clean && rm -rf /var/lib/apt/lists/*

ADD ./info.php /var/www/html
RUN chmod -R 0755 /var/www/html

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

EXPOSE 80
