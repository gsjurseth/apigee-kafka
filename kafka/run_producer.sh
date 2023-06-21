#!/bin/bash

ORG=$1
ENV=$2
APIKEY=$3

cat <<EOF > /tmp/producer_jaas.conf
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


export KAFKA_OPTS="-Djava.security.auth.login.config=/tmp/producer_jaas.conf"

/opt/bitnami/kafka/bin/kafka-console-producer.sh --topic quickstart-events --bootstrap-server localhost:9092 \
    --producer.config /opt/bitnami/kafka/config/producer_sasl.properties
