FROM fedora:27

RUN yum update -y && yum install -y gcc gcc-c++ cmake make gdb

RUN yum update -y && yum install -y openssh-server

RUN mkdir /var/run/sshd
RUN echo 'root:toolchain' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN mkdir -p /etc/ssh
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' < /dev/null

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
