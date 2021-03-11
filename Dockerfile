FROM ubuntu:20.04
RUN apt update && \
 echo "Y" - > apt-get install ruby-full && \
 apt install ruby-dev && \
 gem install fluentd -v "~> 0.12.0" --no-ri --no-rdoc  && \ 
 mkdir /etc/fluent/myconfig/
COPY fluent.conf /etc/fluent/myconfig/
CMD ["fluentd",  "-c", "/etc/fluent/myconfig/fluent.conf"]
