#!/bin/bash

echo "Starting deploy with mvn clean install... Injection from client to server SL" 

# Read installation parameters from config.cfg file.                            
if [ -f /home/asw/_shared/scripts/config.cfg ]; then                                     
  source /home/asw/_shared/scripts/config.cfg                                         
else                                                                            
  echo "ERROR: file config.cfg not found. Exiting."                             
  exit 1                                                                        
fi

cd /home/asw/projects/app-client/

mvn clean install wildfly:deploy -Dwildfly.hostname=$SERVER_IP -Dwildfly.username=$ADMIN_USER -Dwildfly.password=$ADMIN_PSW

echo "End of deploy "