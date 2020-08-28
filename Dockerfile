FROM alpine:3.12

ADD requirements.txt /tmp/requirements.txt
RUN apk --update add \
    jq \
    groff \
    less \
    python3 \
    py3-pip \
    py3-colorama \
    py3-six \
    py3-urllib3 \
    && pip install "$(grep awscli /tmp/requirements.txt)" \
    && apk del py3-pip \
    && rm -rf /var/cache/apk/* /tmp/requirements.txt
