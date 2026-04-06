#!/bin/bash

# Fetch HTTP status code
status_code=$(curl -o /dev/null -s -w "%{http_code}" https://www.guvi.in)

echo "HTTP Status Code: $status_code"

# Print success/failure message
if [ "$status_code" -eq 200 ]; then
    echo "Success: The site is reachable."
else
    echo "Failure: The site returned an error."
fi
