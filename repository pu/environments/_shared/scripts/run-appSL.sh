#!/bin/bash

echo "Running client app by appclient.sh... SL" 

# Read installation parameters from config.cfg file.                            
if [ -f /home/asw/_shared/scripts/config.cfg ]; then                                     
  source /home/asw/_shared/scripts/config.cfg                                         
else                                                                            
  echo "ERROR: file config.cfg not found. Exiting."                             
  exit 1                                                                        
fi

sudo /opt/wildfly/bin/appclient.sh --ejb-client-properties=jboss-ejb-client.properties ear/target/jboss-application-client.ear#simpleClient.jar Simone EJB Running!

echo "End of running... SL"