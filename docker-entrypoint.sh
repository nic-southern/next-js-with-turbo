#!/bin/bash
repo=${PROJECT_REPOSITORY_URL}
repo="${repo:8}"
githubrepo=https://${GITHUB_TOKEN}@$repo
source /etc/profile
echo "Starting the build"
cd /usr/www
echo "Checkout source code"
git clone $githubrepo apps/app
cd apps/app
git checkout ${PROJECT_BRANCH}
echo "Checkout source code"
echo "Install Packages"
npm install -y
cd /usr/www
npx turbo run build test lint db:push
echo "Start the server"
cd /usr/www/apps/app
npm start