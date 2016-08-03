FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install emacs=46.1
RUN apt-get -y install rbenv=0.4.0+debian1-3
RUN apt-get -y install ruby-build=20151028-1
RUN apt-get -y install git=1:2.7.4-0ubuntu1 
RUN apt-get -y install curl=7.47.0-1ubuntu2
RUN gem install robocop
RUN rbenv install 2.2.3
