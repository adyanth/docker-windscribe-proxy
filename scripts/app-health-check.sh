#! /bin/bash

# This script should check the health of your running app.  Return 0 on success, or anything else on failure

HTTP_CODE=$(curl -so /dev/null -w "%{http_code}" http://127.0.0.1:3128/)

if [ ! $HTTP_CODE -eq 400 ]; then
    exit 1;
fi

exit 0

