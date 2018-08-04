FROM ubuntu:18.04

WORKDIR /tmp

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  bash \
  build-essential libmpfr-dev libmpc-dev \
  python python3 \
  curl wget \
  unzip unrar-free bzip2 xz-utils \
  texinfo \
  git \
  default-jdk \
  pkg-config make automake \
  file rsync nano \
  && DEBIAN_FRONTEND=noninteractive apt-get clean
