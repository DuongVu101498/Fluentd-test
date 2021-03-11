FROM ubuntu:20.04
RUN apt update && \
 echo "Y" - > apt-get install ruby-full && \
 echo "Y" - > apt install ruby-dev && \
 echo "Y" - > gem install fluentd -v "~> 0.12.0" --no-ri --no-rdoc  
RUN mkdir -p /etc/fluent/myconfig/  && \
 mkdir -p /fluentd/etc/ && \
 touch /fluentd/etc/myapp-log.log
COPY fluent.conf /etc/fluent/myconfig/
CMD ["fluentd",  "-c", "/etc/fluent/myconfig/fluent.conf"]
