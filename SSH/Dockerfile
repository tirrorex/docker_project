FROM ubuntu:latest
USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
RUN useradd -ms /bin/bash tnoah
RUN mkdir -p /tnoah/.ssh
RUN chmod 700 /tnoah/.ssh
ADD config/authorized_keys /authorized_keys
RUN mv /authorized_keys /tnoah/.ssh/.
RUN chmod 600 /tnoah/.ssh/*
RUN chown -Rf tnoah:tnoah /tnoah/.ssh
RUN echo 'tnoah:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
WORKDIR /tnoah
EXPOSE 22
USER tnoah
CMD ["/usr/sbin/sshd", "-D"]
