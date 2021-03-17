FROM ruby:latest

RUN apt-get update
RUN apt-get install -y \
      bash \
      build-essential 

EXPOSE 4000

WORKDIR /workspace

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "build" ]
