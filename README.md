# Service Kafka Server

Service for message queue

### Version
Alpha

### Instalation
```sh
export OWNER=owner
export TAG=tag

docker build -t $OWNER/kafka:$TAG /kafka-$TAG
```

### Dependency
- Apache Zookeeper

### How to use

```sh
docker run -d -e KAFKA_HEAP_OPTS='-Xmx256M -Xms128M' -e KAFKA_BROKER_ID=1 -e KAFKA_ZOOKEEPER_CONNECT="192.168.0.116:2181,192.168.0.116:2182,192.168.0.116:2183" -e KAFKA_ADVERTISED_PORT=9092 -e KAFKA_ADVERTISED_HOST_NAME=192.168.0.116 -p 9092:9092 ardyantohermawan/kafka:0.10.0
```
```sh
docker run -d -e KAFKA_HEAP_OPTS='-Xmx256M -Xms128M' -e KAFKA_BROKER_ID=2 -e KAFKA_ZOOKEEPER_CONNECT="192.168.0.116:2181,192.168.0.116:2182,192.168.0.116:2183" -e KAFKA_ADVERTISED_PORT=9093 -e KAFKA_ADVERTISED_HOST_NAME=192.168.0.116 -p 9093:9092 ardyantohermawan/kafka:0.10.0
```
```sh
docker run -d -e KAFKA_HEAP_OPTS='-Xmx256M -Xms128M' -e KAFKA_BROKER_ID=3 -e KAFKA_ZOOKEEPER_CONNECT="192.168.0.116:2181,192.168.0.116:2182,192.168.0.116:2183" -e KAFKA_ADVERTISED_PORT=9094 -e KAFKA_ADVERTISED_HOST_NAME=192.168.0.116 -p 9094:9092 ardyantohermawan/kafka:0.10.0
```

### Create kafka topic

docker run -d -e ZK="192.168.0.116:2181,192.168.0.116:2182,192.168.0.116:2183" ardyantohermawan/kafka:0.10.0 bash -c "\$KAFKA_HOME/bin/kafka-topics.sh --create --topic topic --partitions 3 --zookeeper \$ZK --replication-factor 2"