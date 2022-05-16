#!/bin/bash

IS_APACHE_DISABLED=$(/bin/launchctl print-disabled system | /usr/bin/grep -c '"org.apache.httpd" => true')

if [[ "$IS_APACHE_DISABLED" == 1 ]]; then
    echo "org.apache.httpd is disabled"
    exit 0
else
    echo "org.apache.httpd is enabled"
    exit 1
fi
