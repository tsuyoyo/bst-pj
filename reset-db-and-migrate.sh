#!/bin/zsh
cd bst-pj-database
docker-compose down -v
docker-compose up -d
npm run migrate:up
