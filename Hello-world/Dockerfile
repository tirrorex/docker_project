FROM debian:jessie
USER root
RUN apt-get update && \
    apt-get install -y nginx
EXPOSE 80 443
RUN echo 'export PS1="tnoah@42born2code:/# "' >> /root/.bashrc
RUN echo 'service nginx start' >> /root/.bashrc
RUN rm /var/www/html/index.nginx-debian.html
COPY www/index.html /var/www/html/index.html
CMD ["nginx", "-g", "daemon off;"]
