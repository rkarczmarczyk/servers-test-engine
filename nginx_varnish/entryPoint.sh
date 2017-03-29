#!/bin/bash

/data/scripts/loadPage.sh /usr/share/nginx/www
service nginx start & service varnish start

sleep infinity
