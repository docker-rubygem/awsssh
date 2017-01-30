FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.2.0.rc1

RUN gem install awsssh --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["awsssh"]
CMD ["--help"]
