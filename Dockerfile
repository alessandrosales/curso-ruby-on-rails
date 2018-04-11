FROM ruby:2.4.4-jessie
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /webapp
WORKDIR /webapp
COPY webapp/Gemfile /webapp/Gemfile
COPY webapp/Gemfile.lock /webapp/Gemfile.lock
RUN bundle install
COPY ./webapp /webapp