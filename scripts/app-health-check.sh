#! /bin/bash

# This script should check the health of your running app.  Return 0 on success, or anything else on failure

HTTP_CODE=$(curl -so /dev/null -w "%{http_code}" https://adyanth.site/)

if [ ! $HTTP_CODE -eq 200 ] && [ ! $HTTP_CODE -eq 429 ]; then
    exit 1;
fi

exit 0

