FROM ubuntu:xenial

COPY generate-ssh-keyfiles.sh /usr/local/bin/

RUN apt-get update -q -y \
  && apt-get install -y -q ssh sudo vim nano curl wget git \
  && adduser -q --disabled-password --gecos "" ubuntu \
  && echo "ubuntu:ubuntu" | chpasswd \
  && gpasswd -a ubuntu sudo \
  && echo "ubuntu ALL=NOPASSWD: ALL" >> /etc/sudoers \
  && sed -i "s/#PasswordAuthentication yes/PasswordAuthentication no/" /etc/ssh/sshd_config \
  && su -c "/usr/local/bin/generate-ssh-keyfiles.sh" ubuntu \
  && mkdir /var/run/sshd

EXPOSE 22
CMD /usr/sbin/sshd -D | watch -n 30 cat /home/ubuntu/.ssh/id_dsa
