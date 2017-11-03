#!/usr/bin/env bash

# Change to relevant directory
cd /var/www/public

# Change domain
wp option update siteurl "http://arcadia.local"
wp option update home "http://arcadia.local"

# Replace links
wp search-replace 'http://arcadia.dev/' 'http://arcadia.local/' --all-tables

# Change to active theme directoy
cd wp-content/themes/$(wp option get template)

# Fix gulp script
sed -i'.backup' "s/.dev/.local/g" gulpfile.js
