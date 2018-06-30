#!/bin/bash
# Read installation parameters from config.cfg file.
if [ -f /home/asw/_shared/scripts/config.cfg ]; then
  source /home/asw/_shared/scripts/config.cfg
else
  echo "ERROR: file config.cfg not found. Exiting."
  exit 1
fi
#SL
echo "Deploying the package to server from client..."
cd /home/asw/projects/ejb-remote/
mvn clean install
mvn clean package wildfly:deploy -Dwildfly.hostname=$SERVER_IP -Dwildfly.username=$ADMIN_USER -Dwildfly.password=$ADMIN_PSW
cd client/
mvn clean compile
mvn clean package assembly:single
#sudo /opt/wildfly/bin/appclient.sh --ejb-client-properties=jboss-ejb-client.properties target/ejb-remote-client-jar-with-dependencies.jar

echo "End of deploy"