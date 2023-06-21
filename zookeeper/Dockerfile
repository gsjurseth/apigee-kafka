FROM docker.io/bitnami/zookeeper:3.8

USER root
#COPY zoo.cfg /opt/bitnami/zookeeper/conf/zoo.cfg
#COPY zookeeper_jaas.config /opt/bitnami/zookeeper/conf/zookeeper_jaas.config
#COPY entrypoint.sh /opt/bitnami/scripts/zookeeper/entrypoint.sh

#ENV JAVA_OPTS="-Djava.security.auth.login.config=/opt/bitnami/zookeeper/conf/zookeeper_jaas.config"

EXPOSE 2181 2888 3888 8080

USER 1001
ENTRYPOINT [ "/opt/bitnami/scripts/zookeeper/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/zookeeper/run.sh" ]
