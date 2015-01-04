FROM ubuntu:14.10
MAINTAINER John Ahlroos

RUN apt-get update && apt-get install motion -y

EXPOSE 8081

ADD ./conf/motion.conf /etc/motion/motion.conf

VOLUME /var/motion

CMD ["motion"]


