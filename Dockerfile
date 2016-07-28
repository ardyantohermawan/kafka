FROM ubuntu:trusty

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y tar openjdk-7-jre-headless wget
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget -q http://artfiles.org/apache.org/kafka/0.8.2.0/kafka_2.10-0.8.2.0.tgz -O /tmp/kafka_2.10-0.8.2.0.tgz

RUN tar xfz /tmp/kafka_2.10-0.8.2.0.tgz -C /opt
	
ENV KAFKA_HOME /opt/kafka_2.10-0.8.2.0

ADD start-kafka.sh /usr/local/bin/start-kafka.sh
CMD ["start-kafka.sh"]
