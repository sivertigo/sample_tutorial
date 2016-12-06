FROM ruby:2.3.1
RUN apt-get update -qq
RUN apt-get upgrade -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
ENV APP_HOME /myapp
RUN mkdir $APP_HOME
ADD . $APP_HOME/
WORKDIR $APP_HOME/
#<<<<<<< HEAD
RUN gem install bundler
RUN bundle install
#ADD . $APP_HOME
#=======
#RUN gem update --system
#RUN gem update bundler
#RUN bundle install
#>>>>>>> 06f49eabbd3f04684c159f8b16225a9820c4e4c1
RUN rails new sample
WORKDIR $APP_HOME/sample/
