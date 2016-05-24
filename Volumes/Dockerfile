FROM ubuntu:14.04
RUN useradd -ms /bin/bash tnoah
ENV HOME /home/tnoah
USER tnoah
RUN echo 'export PS1="tnoah@42born2code:/# "' >> /home/tnoah/.bashrc
WORKDIR /home/tnoah
