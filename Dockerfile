FROM ruby:2.6.6
ENV LANG C.UTF-8

RUN apt update -qq && apt install -y nodejs yarnpkg postgresql-client
RUN ln -s /usr/bin/yarnpkg /usr/bin/yarn

RUN mkdir /home_management_console
WORKDIR /home_management_console
COPY Gemfile /home_management_console/Gemfile
COPY Gemfile.lock /home_management_console/Gemfile.lock
RUN gem update bundler
RUN bundle install
COPY . /home_management_console

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
