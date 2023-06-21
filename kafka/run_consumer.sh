#!/bin/bash

ORG=$1
ENV=$2
APIKEY=$3

cat <<EOF > /tmp/consumer_jaas.conf
/**
 * Apigee
 */
KafkaClient {
   com.google.kafka.security.apigee.ApigeeLoginModule required
   apiKey="${APIKEY}"
   environment="${ENV}"
   organization="${ORG}";
};
EOF


export KAFKA_OPTS="-Djava.security.auth.login.config=/tmp/consumer_jaas.conf"

/opt/bitnami/kafka/bin/kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092 \
   --consumer.config /opt/bitnami/kafka/config/consumer_sasl.properties
