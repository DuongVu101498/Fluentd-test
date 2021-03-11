FROM ubuntu:20.04
RUN sudo apt update \
 && sudo apt install ruby-full \
 && sudo apt-get install build-essentail patch\
 && sudo gem install bundler \
 && sudo gem install nio4r -v '2.5.7' --source 'https://rubygems.org/' \
 && sudo git clone https://github.com/fluent/fluentd.git \
 && cd fluentd \
 && sudo bundle install \
 && sudo bundle exec rake build \
 && 
