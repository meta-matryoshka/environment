#BASE
FROM ubuntu:16.04

#ENV
ENV OS_USER_NAME=username
ENV OS_USER_PASSWORD=password

#OS
RUN useradd $OS_USER_NAME
RUN apt-get -y update
RUN apt-get -y install expect=5.45-7
RUN expect -c "spawn passwd $OS_USER_NAME ; expect \"Enter new UNIX password:\" ; send \"$OS_USER_PASSWORD\n\" ; expect \"Retype new UNIX password:\" ; send \"$OS_USER_PASSWORD\n\" ; expect \"passwd: password updated successfully\" ; expect eof;exit"

#WORK
RUN apt-get -y install emacs=46.1

#RUBY
RUN apt-get -y install rbenv=0.4.0+debian1-3
RUN apt-get -y install ruby-build=20151028-1
RUN apt-get -y install git=1:2.7.4-0ubuntu1 
RUN apt-get -y install curl=7.47.0-1ubuntu2
RUN gem install robocop
RUN rbenv install 2.2.3
