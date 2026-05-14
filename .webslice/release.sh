#!/bin/bash


# Print command output for each command and exit immediately if any command fails (https://man7.org/linux/man-pages/man1/set.1p.html)
set -ex

php artisan cache:clear
php artisan optimize
php please stache:refresh
php please static:clear
php please static:warm

echo "Finished - Static Cache Generated"
