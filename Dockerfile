FROM ubuntu:20.04
RUN sudo apt update  && \
 sudo apt install ruby-full  && \
 sudo gem install fluentd -v "~> 0.12.0" --no-ri --no-rdoc  && \ 
 sudo mkdir /etc/fluent/myconfig/  && \
COPY fluent.conf /etc/fluent/myconfig/
CMD ["fluentd",  "-c", "/etc/fluent/myconfig/fluent.conf"]
