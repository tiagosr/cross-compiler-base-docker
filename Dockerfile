FROM ubuntu:18.04

WORKDIR /tmp

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  bash \
  build-essential \
  libmpfr-dev libmpc-dev zlib1g-dev libjpeg62-dev libpng-dev libncurses5-dev \
  bison flex \
  python python3 \
  curl wget \
  unzip unrar-free bzip2 xz-utils \
  texinfo help2man \
  git \
  default-jdk \
  pkg-config make automake libtool \
  file rsync nano \
  gawk curses libtool libtool-bin \
  && DEBIAN_FRONTEND=noninteractive apt-get clean

RUN git clone --depth 1 https://github.com/crosstool-ng/crosstool-ng.git && cd crosstool-ng && ./configure --enable-local && make
