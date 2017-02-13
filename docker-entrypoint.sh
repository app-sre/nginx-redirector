#!/bin/bash
if [[ -z "$REDIRECTOR_DESTINATION" ]]; then echo "Variable REDIRECTOR_DESTINATION not set. Aborting."; exit 1; fi

# Add trailing slash
REDIRECTOR_DESTINATION=${REDIRECTOR_DESTINATION%/} # Strip trailing slash if any
REDIRECTOR_DESTINATION="$REDIRECTOR_DESTINATION/"  # Add trailing slash

echo "Configuring redirector to redirect all traffic to $REDIRECTOR_DESTINATION"
sed -e "s@REDIRECTOR_DESTINATION@$REDIRECTOR_DESTINATION@g" /nginx.conf.template > /tmp/nginx.conf

exec "$@"