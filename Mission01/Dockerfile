FROM debian:jessie
USER root
RUN apt-get update && \
    apt-get install -y nginx
EXPOSE 80 443
##RUN echo 'export PS1="tnoah@42born2code:/# "' >> /root/.bashrc
##RUN echo 'service nginx start' >> /root/.bashrc
RUN rm /var/www/html/index.nginx-debian.html
COPY www/index.html /var/www/html/index.html
RUN useradd -ms /bin/bash tnoah
ENV HOME /home/tnoah
RUN echo 'export PS1="tnoah@42born2code:/# "' >> /home/tnoah/.bashrc
WORKDIR /home/tnoah
RUN echo 'service nginx start' >> /home/tnoah/.bashrc
CMD ["nginx", "-g", "daemon off;"]
