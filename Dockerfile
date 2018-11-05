FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /code
WORKDIR /code
COPY Gemfile /code/Gemfile
COPY Gemfile.lock /code/Gemfile.lock
RUN bundler install
COPY . /code
CMD [ "bundle", "exec", "rails", "server", "-p 3000", "-b '0.0.0.0'"]