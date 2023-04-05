#!/bin/bash

#sed -i -e "s/@REMOTE_SERVICE_KEY@/$REMOTE_SERVICE_KEY/" /opt/bitnami/kafka/config/server.properties
#sed -i -e "s/@REMOTE_SERVICE_SECRET@/$REMOTE_SERVICE_SECRET/" /opt/bitnami/kafka/config/server.properties
#sed -i -e "s/@REMOTE_SERVICE_URL@/$REMOTE_SERVICE_URL/" /opt/bitnami/kafka/config/server.properties

exec /opt/bitnami/scripts/kafka/entrypoint.sh /opt/bitnami/scripts/kafka/run.sh
