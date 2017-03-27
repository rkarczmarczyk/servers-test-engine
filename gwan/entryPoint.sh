#!/bin/bash

/data/scripts/loadPage.sh /opt/www
chmod -R www-data:www-data /opt/www/*

./gwan

sleep infinity
