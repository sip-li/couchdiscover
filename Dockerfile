FROM python:3-alpine

MAINTAINER Joe Black <me@joeblack.nyc>

ARG     COUCHDISCOVER_VERSION

ENV     COUCHDISCOVER_VERSION=${COUCHDISCOVER_VERSION:-0.2.4}

LABEL   lang.python.version=3
LABEL   app.name=couchdiscover \
        app.version=${COUCHDISCOVER_VERSION}

ADD     https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 /dumb-init
RUN     chmod +x /dumb-init

# COPY    . /package
# RUN     pip3 install -e /package
RUN     pip3 install couchdiscover==$COUCHDISCOVER_VERSION

ENV         ENVIRONMENT=production
ENV         LOG_LEVEL=INFO

ENTRYPOINT  ["/dumb-init", "--"]
CMD         ["couchdiscover"]
