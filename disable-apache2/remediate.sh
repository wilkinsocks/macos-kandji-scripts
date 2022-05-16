#!/bin/bash

echo "Disabling: org.apache.httpd"
/bin/launchctl disable system/org.apache.httpd
