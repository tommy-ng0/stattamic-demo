#!/bin/bash
echo "Starting Build Script"

# Print command output for each command and exit immediately if any command fails (https://man7.org/linux/man-pages/man1/set.1p.html)
set -ex

cp .env.example .env
composer install --no-interaction -vvv --no-dev --prefer-dist --optimize-autoloader
npm ci --cache .npm --prefer-offline
npm run build

php artisan key:generate

echo "Build Script Finished Successfully"
