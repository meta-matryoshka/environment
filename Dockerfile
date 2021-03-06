#BASE
FROM ubuntu:16.04

#ENV
ENV OS_USER_NAME=username
ENV OS_USER_PASSWORD=password

#OS
RUN apt-get -y update
RUN apt-get -y install apt-utils=1.2.12~ubuntu16.04.1
RUN apt-get -y install expect=5.45-7
RUN useradd $OS_USER_NAME
RUN expect -c "spawn passwd $OS_USER_NAME ; expect \"Enter new UNIX password:\" ; send \"$OS_USER_PASSWORD\n\" ; expect \"Retype new UNIX password:\" ; send \"$OS_USER_PASSWORD\n\" ; expect \"passwd: password updated successfully\" ; expect eof;exit"

#Tools
RUN apt-get -y install git=1:2.7.4-0ubuntu1
RUN apt-get -y install curl=7.47.0-1ubuntu2.1
RUN apt-get -y install nodejs=4.2.6~dfsg-1ubuntu4.1
RUN apt-get -y install rbenv=0.4.0+debian1-3
RUN apt-get -y install ruby-build=20151028-1
RUN apt-get -y install build-essential=12.1ubuntu2
RUN apt-get -y install patch=2.7.5-1
RUN apt-get -y install ruby-dev=1:2.3.0+1
RUN apt-get -y install zlib1g-dev=1:1.2.8.dfsg-2ubuntu4
RUN apt-get -y install liblzma-dev=5.1.1alpha+20120614-2ubuntu2

#Change User
RUN su $OS_USER_NAME

#Ruby
RUN gem install robocop
RUN gem install rails
