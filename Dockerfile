FROM ruby:2.7.2-buster
ENV JEKYLL_ENV=production
RUN apt-get update
RUN apt-get install -y \
      bash \
      build-essential 

EXPOSE 4000

WORKDIR /workspace

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "build" ]
