#! /bin/bash

# Here is where you set up the environment for the app.  This is run as root.

set -e

echo "Initializing cache..."
$(which squid) -N -f /etc/squid/squid.conf -z
echo "Starting squid..."
$(which squid) -f /etc/squid/squid.conf -NYCd 1
