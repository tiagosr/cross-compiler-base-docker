FROM ubuntu:18.04

WORKDIR /tmp

RUN apt-get update && apt-get install -y \
  bash \
  build-essential libmpfr-dev libmpc-dev \
  python python3 \
  curl wget \
  unzip unrar-free bzip2 \
  texinfo \
  git \
  default-jdk \
  pkg-config make automake \
  file rsync nano \
  && apt-get clean
