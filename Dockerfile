FROM alpine:3.11

RUN apk --no-cache --update add \
    bash \
    less \
    groff \
    jq \
    git \
    curl \
    python \
    py-pip

RUN pip install --upgrade pip \
    awsebcli \
    awscli

RUN mkdir ~/.aws