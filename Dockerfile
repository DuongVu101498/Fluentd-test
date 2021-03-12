FROM ubuntu:20.04
RUN apt update && \
 apt-get update && \
 apt-get -y install ruby && \
 apt-get install -y ruby-dev && \
 #apt install build essential && \
 echo "Y" - > gem install fluentd
RUN mkdir -p /etc/fluent/myconfig/  
RUN mkdir -p /fluentd/etc/ 
RUN touch /fluentd/etc/myapp-log.log
COPY fluent.conf /etc/fluent/myconfig/
CMD ["fluentd",  "-c", "/etc/fluent/myconfig/fluent.conf"]
