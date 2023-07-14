FROM ubuntu
RUN  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y sudo curl bash git ansible \
  && rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash blue
RUN echo 'blue:!docker' | chpasswd
RUN usermod -aG sudo blue
