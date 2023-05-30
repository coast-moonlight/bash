#!/bin/bash

# Set the URL to check
url="http://example.com"

# Send a HTTP request and store the response code
response_code=$(curl -sL -w "%{http_code}" "${url}" -o /dev/null)

# Check the response code and print the result
if [ "${response_code}" -eq 200 ]; then
    echo "Website is up and running!"
else
    echo "Website is down."
fi
