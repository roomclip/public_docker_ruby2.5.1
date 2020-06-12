FROM ruby:2.5.1-alpine3.7

RUN apk update && \
    apk upgrade && \
    apk add --no-cache linux-headers libxml2-dev make gcc libc-dev nodejs tzdata postgresql-dev postgresql && \
    apk add --virtual build-packages --no-cache build-base curl-dev

RUN gem update --system && \
    gem install bundler -v 2.1.4

ENV BUNDLER_VERSION 2.1.4
