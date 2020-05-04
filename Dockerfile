FROM alpine:3.11

RUN apk --no-cache --update add \
    bash \
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
    py3-pip

RUN pip3 install --upgrade --no-cache-dir pip

RUN pip3 install --upgrade --no-cache-dir \
    awsebcli \
    awscli

RUN apk del \
    gcc \
    libc-dev \
    libffi-dev \
    libressl-dev \
    make \
    musl-dev \
    python3-dev

RUN rm -rf /var/cache/apk/*

RUN mkdir ~/.aws
