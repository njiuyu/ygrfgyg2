#!/bin/sh
if [ ! -f UUID ]; then
  UUID="32954eec-56d9-4027-8dbb-efb84b6bf15c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

