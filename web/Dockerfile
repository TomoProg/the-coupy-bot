FROM ruby:2.4.1
MAINTAINER TomoProg <helloworld0306.xxx@gmail.com>
RUN apt-get update && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	mysql-client
RUN mkdir /app
WORKDIR /app
ADD /app/Gemfile /app/Gemfile
ADD /app/Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD /app /app
