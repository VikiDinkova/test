#!/bin/bash

# The script installs dependencies and compiles Mercator SDK

echo
echo preparing SDK
cd ..

npm cache verify
npm install
npm run build

cd ../scripts