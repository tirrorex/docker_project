FROM ubuntu:14.04

RUN apt-get update && apt-get install -y openssh-server vim
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin no/' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
RUN sed -i 's/Port 22/Port 42/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN useradd -ms /bin/bash tnoah
RUN mkdir -p /home/tnoah/.ssh
ADD config/authorized_keys /authorized_keys
RUN mv /authorized_keys /home/tnoah/.ssh/.
RUN chmod go-w /home/tnoah
RUN chmod 700 /home/tnoah/.ssh
RUN chmod 600 /home/tnoah/.ssh/*
RUN chown -Rf tnoah:tnoah /home/tnoah/.ssh
RUN echo 'tnoah:screencast' | chpasswd
RUN echo 'export PS1="tnoah@42born2code:/# "' >> /home/tnoah/.bashrc

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 42
CMD ["/usr/sbin/sshd", "-D"]
