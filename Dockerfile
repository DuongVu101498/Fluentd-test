FROM ubuntu:20.04
RUN apt update
RUN apt-get install ruby-full
RUN gem install fluentd -v "~> 0.12.0" --no-ri --no-rdoc  && \ 
 mkdir /etc/fluent/myconfig/
COPY fluent.conf /etc/fluent/myconfig/
CMD ["fluentd",  "-c", "/etc/fluent/myconfig/fluent.conf"]
