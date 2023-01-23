FROM ubuntu:18.04

# Install Flutter
ENV FLUTTER_HOME=$HOME/flutter

RUN \
    apt update && apt install -y \
    bash \
    git \
    curl \
    unzip &&\
    git clone https://github.com/flutter/flutter.git -b stable ${FLUTTER_HOME} &&\
    rm -rf /var/lib/apt/lists/*
    
ENV PATH="$PATH:${FLUTTER_HOME}/bin"

RUN flutter doctor

