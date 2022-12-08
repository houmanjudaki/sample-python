#!/usr/bin/env bash

SiteStatus="$1"
SiteStatusConfig="/etc/nginx/status.conf"

if [ "$SiteStatus" = "maintenance" ]; then
    echo "root /var/www/maintenance;" > $SiteStatusConfig
else
    echo "root /var/www/site;" > $SiteStatusConfig
fi
nginx -s reload

