FROM ruby:slim
MAINTAINER souravsrkr254@gmail.com

RUN apt-get update && apt-get install -y \ 
  build-essential \ 
  nodejs \
  libsqlite3-dev

RUN mkdir -p /app

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler --no-ri && bundle install --jobs 20 --retry 5

EXPOSE 3000

CMD ["bundle", "exec" ,"rails", "db:create", "db:migrate"]

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
