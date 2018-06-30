#!/bin/bash

echo "Starting up wildfly in standalone mode SL" 

# Read installation parameters from config.cfg file.                            
if [ -f /home/asw/_shared/scripts/config.cfg ]; then                                     
  source /home/asw/_shared/scripts/config.cfg                                         
else                                                                            
  echo "ERROR: file config.cfg not found. Exiting."                             
  exit 1                                                                        
fi

sudo /opt/wildfly/bin/standalone.sh -b $SERVER_IP -bmanagement $SERVER_IP

echo "Wildfly is running.....................SL"