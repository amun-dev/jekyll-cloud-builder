FROM ruby:latest

RUN apt-get install -y \
      bash \
      build-essential \
    && gem install jekyll

EXPOSE 4000

WORKDIR /workspace

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "build" ]
