FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /tsublog
WORKDIR /tsublog
ADD Gemfile /tsublog/Gemfile
ADD Gemfile.lock /tsublog/Gemfile.lock
RUN bundle install
ADD . /tsublog