FROM bitnami/kafka:latest

USER root
COPY wait-for-it.sh /wait-for-it.sh
COPY runit.sh /runit.sh
RUN mkdir -p /opt/apigee-kafka
COPY kafka-security-apigee-0.0.1.jar /opt/apigee-kafka/kafka-security-apigee-0.0.1.jar
COPY server.properties /opt/bitnami/kafka/config/server.properties 
COPY server_jaas.config /opt/bitnami/kafka/config/kafka_jaas.conf
ENV CLASSPATH=${CLASSPATH}:/opt/apigee-kafka/kafka-security-apigee-0.0.1.jar 

ENTRYPOINT ["/wait-for-it.sh","-h","zookeeper.local","-p","2181","--","/runit.sh"]
