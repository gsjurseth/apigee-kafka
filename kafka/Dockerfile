FROM docker.io/bitnami/kafka:3.4

USER root
COPY wait-for-it.sh /wait-for-it.sh
COPY runit.sh /runit.sh
COPY run_consumer.sh /run_consumer.sh
COPY run_producer.sh /run_producer.sh
RUN mkdir -p /opt/apigee-kafka
COPY kafka-security-apigee-0.0.1.jar /opt/apigee-kafka/kafka-security-apigee-0.0.1.jar
COPY server.properties /opt/bitnami/kafka/config/server.properties 
COPY producer_sasl.properties /opt/bitnami/kafka/config/producer_sasl.properties 
COPY producer_jaas.config /opt/bitnami/kafka/config/producer_jaas.conf
COPY broken_jaas.config /opt/bitnami/kafka/config/broken_jaas.conf
COPY consumer_sasl.properties /opt/bitnami/kafka/config/consumer_sasl.properties 
COPY consumer_jaas.config /opt/bitnami/kafka/config/consumer_jaas.conf
COPY server_jaas.config /opt/bitnami/kafka/config/kafka_jaas.conf
ENV CLASSPATH=${CLASSPATH}:/opt/apigee-kafka/kafka-security-apigee-0.0.1.jar 

ENTRYPOINT ["/wait-for-it.sh","-h","zookeeper.local","-p","2181","--","/runit.sh"]
