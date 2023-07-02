FROM ubuntu
RUN apt-get update \
  && apt-get install -y openssh-server \
  && apt-get install -y sudo \
  && rm -rf /var/lib/apt/lists/*
RUN service ssh start
RUN useradd -ms /bin/bash blue
RUN echo 'blue:!docker' | chpasswd
RUN usermod -aG sudo blue
CMD ["/usr/sbin/sshd", "-D"]
