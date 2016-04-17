FROM alpine:3.3

RUN apk --update add \
    jq \
    groff \
    less \
    python \
    py-pip \
    && pip install awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*

