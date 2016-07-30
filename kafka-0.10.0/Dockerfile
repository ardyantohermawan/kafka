FROM java:openjdk-8-jre

RUN apt-get install -y tar wget
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget -q http://www-us.apache.org/dist/kafka/0.10.0.0/kafka_2.10-0.10.0.0.tgz -O /tmp/kafka_2.10-0.10.0.0.tgz

RUN tar xfz /tmp/kafka_2.10-0.10.0.0.tgz -C /opt
	
ENV KAFKA_HOME /opt/kafka_2.10-0.10.0.0

ADD start-kafka.sh /usr/local/bin/start-kafka.sh
CMD ["start-kafka.sh"]
