FROM ubuntu:latest

MAINTAINER Luis

USER root

WORKDIR /root

RUN apt-get update

# Install vim editor and netstat cmd
RUN apt-get install vim -y
RUN apt install openssh-server -y
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "root:shroot"|chpasswd
COPY startup_script.sh startup_script.sh
RUN chmod 777 startup_script.sh

RUN apt update
RUN apt-get install python3.10 -y
RUN apt install python3-pip -y

CMD ["./startup_script.sh"]
