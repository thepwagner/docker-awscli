FROM alpine:3.3

ADD requirements.txt /tmp/requirements.txt
RUN apk --update add \
    jq \
    groff \
    less \
    python \
    py-pip \
    && pip install "$(grep awscli /tmp/requirements.txt)" \
    && apk del py-pip \
    && rm -rf /var/cache/apk/* /tmp/requirements.txt
