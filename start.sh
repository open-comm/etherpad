#!/bin/sh

docker-compose up -d etherpad-db
sleep 10

docker-compose up -d etherpad

