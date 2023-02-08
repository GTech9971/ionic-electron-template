#!/bin/bash

PROJECT_NAME=$1

# Check if an argument has been provided
if [ -z "$PROJECT_NAME" ]; then
  echo 'Error: Please provide a project name as an argument.' >&2
  exit 1
fi

# Check if Ionic is installed
if ! [ -x "$(command -v ionic)" ]; then
  echo 'Error: Ionic CLI is not installed.' >&2
  exit 1
fi

# Create the Ionic project
ionic start $PROJECT_NAME blank --type=react --capacitor --no-interactive
cd $PROJECT_NAME
ionic build --prod
echo "created ionic propject."

#setup electron
echo "setup electron"
cd electron

npm i @capacitor-community/electron
npx cap add @capacitor-community/electron
npx cap open @capacitor-community/electron

echo "setup electron package"

cd electron
npm install --save-dev @electron-forge/cli
npx electron-forge import
npm run make

echo "done."