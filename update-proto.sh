#!/bin/zsh
cd bst-pj-proto
npm run generate
cd ../bst-pj-api
npm run copy:proto
