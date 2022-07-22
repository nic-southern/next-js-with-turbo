#!/bin/bash
source /etc/profile
echo "Starting the build"
cd /usr/www
echo "Checkout source code"
git clone ${PROJECT_REPOSITORY_URL} app/
cd app/
echo "Checkout source code"
git checkout ${PROJECT_BRANCH}
echo "Install Packages"
npm install -y
npm run build
echo "Start the server"
npm start