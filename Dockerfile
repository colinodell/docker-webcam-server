FROM ubuntu:16.04
MAINTAINER Colin O'Dell

RUN apt-get update && apt-get install motion -y

EXPOSE 9999

ADD ./conf/motion.conf /etc/motion/motion.conf

VOLUME /var/motion

CMD ["motion"]


