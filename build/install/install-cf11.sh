#!/bin/sh
#
# Script based on https://forums.adobe.com/message/4727551

/tmp/ColdFusion_11_WWEJ_linux64.bin -f installer.profile

# Disable admin security
/tmp/neo-security-config.sh /opt/coldfusion11/cfusion false

# Start up the CF server instance and wait for a moment
/opt/coldfusion11/cfusion/bin/coldfusion start; sleep 15

# Simulate a browser request on the admin UI to complete installation
wget --delete-after http://localhost:8500/CFIDE/administrator/index.cfm?configServer=true

# Stop the CF server instance
/opt/coldfusion11/cfusion/bin/coldfusion stop

# Re-enable admin security
/tmp/neo-security-config.sh /opt/coldfusion11/cfusion true

# Configure Apache2 to run in front of Tomcat
/opt/coldfusion11/cfusion/runtime/bin/wsconfig -ws Apache -dir /etc/apache2/ -bin /usr/sbin/apache2 -script /etc/init.d/apache2
