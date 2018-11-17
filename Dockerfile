FROM ruby:2.3.1
RUN apt-get update && apt-get install -y \
      build-essential \
      libpq-dev \
      nodejs \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /code
WORKDIR /code
COPY Gemfile /code/Gemfile
COPY Gemfile.lock /code/Gemfile.lock
RUN bundle install
COPY . /code