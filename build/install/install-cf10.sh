#!/bin/sh

/tmp/ColdFusion_10_WWEJ_linux64.bin -f installer.profile

# Disable admin security
/tmp/neo-security-config.sh /opt/coldfusion10/cfusion false

# Start up the CF server instance and wait for a moment
/opt/coldfusion10/cfusion/bin/coldfusion start; sleep 15

# Simulate a browser request on the admin UI to complete installation
wget --delete-after http://localhost:8500/CFIDE/administrator/index.cfm?configServer=true

# Stop the CF server instance
/opt/coldfusion10/cfusion/bin/coldfusion stop

# Re-enable admin security
/tmp/neo-security-config.sh /opt/coldfusion10/cfusion true

/opt/coldfusion10/jre/bin/java -jar /tmp/cf10_mdt_updt.jar -i silent -f /tmp/update.profile
/opt/coldfusion10/jre/bin/java -jar /tmp/hotfix_013.jar -i silent -f /tmp/update.profile
