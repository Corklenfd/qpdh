#!/bin/sh
if [ ! -f UUID ]; then
  UUID="efed3c2a-5d79-4620-9cd9-c98ff9b4fcf9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

