#!/bin/sh

echo "Switching to branch master"
git checkout master

echo "Building app"
npm run build

echo "Deploying files to server"
rsync -avP build/ manu@34.140.219.54:/var/www/assets.wetrack.co.ke/
echo "Deployment complete"