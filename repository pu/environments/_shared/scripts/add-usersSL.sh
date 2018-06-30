#!/bin/bash

echo "Adding one admin and one user...SL" 

# Read installation parameters from config.cfg file.                            
if [ -f /home/asw/_shared/scripts/config.cfg ]; then                                     
  source /home/asw/_shared/scripts/config.cfg                                         
else                                                                            
  echo "ERROR: file config.cfg not found. Exiting."                             
  exit 1                                                                        
fi

sudo /opt/wildfly/bin/add-user.sh -u simone -p ilaria
sudo /opt/wildfly/bin/add-user.sh -a -u user -p user

echo "End of user's create... SL"