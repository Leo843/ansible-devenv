FROM ubuntu
RUN apt-get update \
  && apt-get install -y sudo curl bash \
  && rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash blue
RUN echo 'blue:!docker' | chpasswd
RUN usermod -aG sudo blue
