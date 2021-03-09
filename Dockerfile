FROM debian:buster
RUN curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-xenial-td-agent4.sh | sh
CMD sudo systemctl start td-agent.service
#config path: /etc/td-agent/td-agent.conf
