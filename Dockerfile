FROM ruby:slim
MAINTAINER souravsrkr254@gmail.com

ADD etc /etc

RUN apt-get update && apt-get install -y \ 
  build-essential \ 
  nodejs \
  libsqlite3-dev

RUN mkdir -p /app

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler --no-ri && bundle install --jobs 20 --retry 5

# Expose port 3000 to the Docker host, so we can access it # from the outside.


EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
