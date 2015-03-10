FROM ubuntu:latest

MAINTAINER HC Softech Inc <hcsoftech@gmail.com>

ADD CrashPlan_3.7.0_Linux.tgz /tmp
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh
ADD crashplan.pub /root/.ssh/authorized_keys

RUN apt-get -y update && apt-get -y install wget && apt-get -y install curl && apt-get -y install openssh-server

RUN sed -i 's/#AuthorizedKeysFile/AuthorizedKeysFile/' /etc/ssh/sshd_config && \
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config && \
service ssh restart

RUN mkdir /backups
RUN mkdir /media/archive
RUN mkdir /media/backup

VOLUME /backups
VOLUME /media

EXPOSE 22 4243 4242

CMD /usr/sbin/sshd -D
