#!/bin/bash

URL="https://google.com"

echo "Checking $URL..."

STATUS=$(curl -L -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS" -eq 200 ]; then
    echo "Service is healthy"
else
    echo "Service is unhealthy. HTTP status: $STATUS"
fi