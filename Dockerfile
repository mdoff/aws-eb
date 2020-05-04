FROM alpine:3.11

RUN apk --no-cache --update add \
    curl \
    gcc \
    git \
    libc-dev \
    libffi-dev \
    libressl-dev \
    make \
    musl-dev \
    python3 \
    python3-dev \
    py3-pip && \
    pip3 install --upgrade --no-cache-dir pip && \
    pip3 install --upgrade --no-cache-dir \
      awsebcli \
      awscli && \
    apk del \
      gcc \
      libc-dev \
      libffi-dev \
      libressl-dev \
      make \
      musl-dev \
      python3-dev && \
      rm -rf /var/cache/apk/*

RUN mkdir ~/.aws
