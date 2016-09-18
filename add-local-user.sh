#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback to default user
USER_ID=${LOCAL_USER_ID:-9001}
USER_NAME=${USER_NAME:-dev}
echo "create user $USER_NAME with UID $USER_ID"
useradd --shell /bin/bash -u $USER_ID -o -c "" -m $USER_NAME
# Change owner of dev folder
chown $USER_NAME:$USER_NAME -R /home/dev

