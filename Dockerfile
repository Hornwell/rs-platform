FROM rails:4.2.6

# Application setup
RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
RUN bundle install
